/*
 * (C) Copyright 2014 Nuxeo SA (http://nuxeo.com/) and contributors.
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the GNU Lesser General Public License
 * (LGPL) version 2.1 which accompanies this distribution, and is available at
 * http://www.gnu.org/licenses/lgpl.html
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * Contributors:
 *     Nelson Silva <nelson.silva@inevo.pt>
 */

library nx_batch;

import 'dart:async' show Future;
import 'dart:convert' show JSON;
import 'dart:html';
import 'package:nuxeo_client/browser_client.dart' as nuxeo;
import 'package:nuxeo_client/http.dart' as http;
import 'package:polymer/polymer.dart';
import 'ui_module.dart';

/// [NXBatch] holds information about files uploaded in a batch
@CustomTag(NXBatch.TAG)
class NXBatch extends NXElement with ChangeNotifier  {

  static const String TAG = "nx-batch";

  static const String UPLOAD_EVENT = "upload";

  /// The ID of the batch
  @reflectable @published String get batchId => __$batchId; String __$batchId; @reflectable set batchId(String value) { __$batchId = notifyPropertyChange(#batchId, __$batchId, value); }

  /// read only
  @reflectable @published bool get readonly => __$readonly; bool __$readonly = false; @reflectable set readonly(bool value) { __$readonly = notifyPropertyChange(#readonly, __$readonly, value); }

  // Can only change id before uploading
  @reflectable @observable bool get wasUploaded => __$wasUploaded; bool __$wasUploaded = false; @reflectable set wasUploaded(bool value) { __$wasUploaded = notifyPropertyChange(#wasUploaded, __$wasUploaded, value); }

  /// List of filenames that belong to this batch
  final List filenames = toObservable([]);

  /// List of Blobs waiting to be uploaded
  final List<http.Blob> blobs = toObservable([]);

  nuxeo.BatchUploader _uploader;

  NXBatch.created() : super.created() {
  }

  /// Delete the batch from the server
  Future delete() =>
    //TODO(nfgs): Move this request to the NX client
    NX.httpClient.get(Uri.parse("${connection.nuxeoUrl}/site/automation/batch/drop/$batchId"))
    .send();

  /// Upload the files to the server
  Future upload(Event e) {
    // create the uploader
    if (_uploader == null) {
      _uploader = new nuxeo.BatchUploader(NX,
            batchId: batchId,
            uploadTimeout: new Duration(minutes: 20));
      // Set the proper index to start uploading files
      _uploader.uploadIdx = filenames.length;
    }

    // Upload the blobs
    return Future.wait(blobs.map((blob) => _uploader.uploadFile(blob)))
    // Clear the blob queue and fetch new info from the server
    .then((_) {
      blobs.clear();
      return fetch();
    })
    .then((_) {
      dispatchEvent(new CustomEvent(UPLOAD_EVENT));
    });
  }

  /// Fetch the files from the server
  Future fetch() {
    wasUploaded = true;
    //TODO(nfgs): Move this request to the NX client
    return NX.httpClient.get(Uri.parse("${connection.nuxeoUrl}/site/automation/batch/files/$batchId"))
    .send()
    .then((response) {
      var json = JSON.decode(response.body);
      if (json.isEmpty) {
        throw new Exception("Batch $batchId does not exist.");
      }
      filenames..clear()..addAll(json.map((f) => f["name"]));
    });
  }

  /// Return a JSON representation of this batch.
  String get asJson {
    var files = [];
    for (var i = 0; i < filenames.length; i++) {
      var file = filenames[i];
      files.add({"upload-batch":"$batchId", "upload-fileId":"$i"});
    };
    if (files.length == 1) {
      return JSON.encode(files[0]);
    }
    return JSON.encode(files.map((f) => {"file": f}).toList());
  }

}