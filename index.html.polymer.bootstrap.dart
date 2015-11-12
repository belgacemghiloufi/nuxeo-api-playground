library app_bootstrap;

import 'package:polymer/polymer.dart';

import 'package:polymer/src/build/log_injector.dart';
import 'index.web_components.bootstrap.dart' as i0;
import 'package:smoke/smoke.dart' show Declaration, PROPERTY, METHOD;
import 'package:smoke/static.dart' show useGeneratedCode, StaticConfiguration;
import 'package:polymer/auto_binding.dart' as smoke_0;
import 'package:polymer/polymer.dart' as smoke_1;
import 'package:nuxeo_api_playground/components/nx_connection.dart' as smoke_2;
import 'package:observe/src/metadata.dart' as smoke_3;
import 'package:nuxeo_api_playground/components/ui_module.dart' as smoke_4;
import 'package:nuxeo_api_playground/components/tree/tree_node.dart' as smoke_5;
import 'package:nuxeo_client/client.dart' as smoke_6;
import 'package:nuxeo_api_playground/components/tree/tree.dart' as smoke_7;
import 'package:nuxeo_api_playground/components/nx_xpath.dart' as smoke_8;
import 'package:nuxeo_api_playground/components/nx_widget.dart' as smoke_9;
import 'package:nuxeo_api_playground/components/nx_batch.dart' as smoke_10;
import 'package:nuxeo_api_playground/components/nx_batch_reference.dart' as smoke_11;
import 'package:nuxeo_api_playground/components/nx_batch_upload.dart' as smoke_12;
import 'package:nuxeo_api_playground/components/nx_content_enrichers.dart' as smoke_13;
import 'package:nuxeo_client/rest.dart' as smoke_14;
import 'package:observe/src/observable_map.dart' as smoke_15;
import 'package:nuxeo_api_playground/components/nx_resource_endpoints.dart' as smoke_16;
import 'package:nuxeo_api_playground/swagger.dart' as smoke_17;
import 'package:nuxeo_api_playground/components/nx_web_adapters.dart' as smoke_18;
import 'package:nuxeo_api_playground/components/nx_request_monitor.dart' as smoke_19;
import 'package:nuxeo_api_playground/components/nx_request_options.dart' as smoke_20;
import 'package:nuxeo_api_playground/components/ui_sidebar.dart' as smoke_21;
import 'package:nuxeo_api_playground/components/nx_repository_browser.dart' as smoke_22;
import 'package:nuxeo_api_playground/components/nx_schema.dart' as smoke_23;
import 'package:nuxeo_api_playground/doctypes.dart' as smoke_24;
import 'package:nuxeo_api_playground/components/nx_structures_browser.dart' as smoke_25;
import 'package:nuxeo_api_playground/components/nx_operation.dart' as smoke_26;
import 'package:nuxeo_client/automation.dart' as smoke_27;
import 'package:nuxeo_api_playground/components/nx_command_endpoints.dart' as smoke_28;
import 'package:nuxeo_api_playground/app.dart' as smoke_29;
abstract class _M1 {} // _M0 & Observable
abstract class _M2 {} // PolymerElement & SemanticUI
abstract class _M3 {} // NXElement & SemanticUI
abstract class _M4 {} // NXElement & SearchFilter
abstract class _M5 {} // NXModule & SemanticUI
abstract class _M6 {} // _M5 & SearchFilter
abstract class _M7 {} // PolymerElement & SearchFilter
abstract class _M8 {} // NXModule & SearchFilter
abstract class _M9 {} // _M8 & SemanticUI
abstract class _M0 {} // Object & Polymer

main() {
  useGeneratedCode(new StaticConfiguration(
      checkedMode: false,
      getters: {
        #CURLRequest: (o) => o.CURLRequest,
        #action: (o) => o.action,
        #adapter: (o) => o.adapter,
        #adapterChanged: (o) => o.adapterChanged,
        #adapters: (o) => o.adapters,
        #alert: (o) => o.alert,
        #alerts: (o) => o.alerts,
        #alphabetically: (o) => o.alphabetically,
        #asBlobUrl: (o) => o.asBlobUrl,
        #asCSV: (o) => o.asCSV,
        #asFileSize: (o) => o.asFileSize,
        #asJson: (o) => o.asJson,
        #avatar: (o) => o.avatar,
        #batch: (o) => o.batch,
        #batchId: (o) => o.batchId,
        #batches: (o) => o.batches,
        #blob: (o) => o.blob,
        #blobs: (o) => o.blobs,
        #body: (o) => o.body,
        #callOp: (o) => o.callOp,
        #canManageTraces: (o) => o.canManageTraces,
        #capitalize: (o) => o.capitalize,
        #categories: (o) => o.categories,
        #category: (o) => o.category,
        #child: (o) => o.child,
        #children: (o) => o.children,
        #clearBatch: (o) => o.clearBatch,
        #connect: (o) => o.connect,
        #connection: (o) => o.connection,
        #connectionId: (o) => o.connectionId,
        #connectionIdChanged: (o) => o.connectionIdChanged,
        #contentEnrichers: (o) => o.contentEnrichers,
        #contentType: (o) => o.contentType,
        #currentItemDiagram: (o) => o.currentItemDiagram,
        #currentTab: (o) => o.currentTab,
        #dataType: (o) => o.dataType,
        #datatype: (o) => o.datatype,
        #delete: (o) => o.delete,
        #description: (o) => o.description,
        #disconnect: (o) => o.disconnect,
        #doc: (o) => o.doc,
        #docChanged: (o) => o.docChanged,
        #docId: (o) => o.docId,
        #docIdChanged: (o) => o.docIdChanged,
        #document: (o) => o.document,
        #documentChanged: (o) => o.documentChanged,
        #documentId: (o) => o.documentId,
        #documentIdChanged: (o) => o.documentIdChanged,
        #downloads: (o) => o.downloads,
        #endpoint: (o) => o.endpoint,
        #endpointKey: (o) => o.endpointKey,
        #endpoints: (o) => o.endpoints,
        #enumerate: (o) => o.enumerate,
        #error: (o) => o.error,
        #errors: (o) => o.errors,
        #facet: (o) => o.facet,
        #facets: (o) => o.facets,
        #fetchDocument: (o) => o.fetchDocument,
        #field: (o) => o.field,
        #fields: (o) => o.fields,
        #filename: (o) => o.filename,
        #filenames: (o) => o.filenames,
        #filter: (o) => o.filter,
        #goHome: (o) => o.goHome,
        #goRoot: (o) => o.goRoot,
        #headers: (o) => o.headers,
        #icon: (o) => o.icon,
        #id: (o) => o.id,
        #inSeconds: (o) => o.inSeconds,
        #index: (o) => o.index,
        #input: (o) => o.input,
        #inputType: (o) => o.inputType,
        #isBodyParam: (o) => o.isBodyParam,
        #isComplex: (o) => o.isComplex,
        #isConnected: (o) => o.isConnected,
        #isConnectedChanged: (o) => o.isConnectedChanged,
        #isEmpty: (o) => o.isEmpty,
        #isFolderish: (o) => o.isFolderish,
        #isNotEmpty: (o) => o.isNotEmpty,
        #item: (o) => o.item,
        #items: (o) => o.items,
        #key: (o) => o.key,
        #keys: (o) => o.keys,
        #keyup: (o) => o.keyup,
        #label: (o) => o.label,
        #length: (o) => o.length,
        #message: (o) => o.message,
        #method: (o) => o.method,
        #methodChanged: (o) => o.methodChanged,
        #methodColors: (o) => o.methodColors,
        #methods: (o) => o.methods,
        #mimetype: (o) => o.mimetype,
        #module: (o) => o.module,
        #moduleChanged: (o) => o.moduleChanged,
        #modules: (o) => o.modules,
        #multiple: (o) => o.multiple,
        #multipleSelection: (o) => o.multipleSelection,
        #name: (o) => o.name,
        #navigate: (o) => o.navigate,
        #nodeSelected: (o) => o.nodeSelected,
        #nuxeoUrl: (o) => o.nuxeoUrl,
        #nuxeoUrlChanged: (o) => o.nuxeoUrlChanged,
        #onFileSelected: (o) => o.onFileSelected,
        #op: (o) => o.op,
        #opRequest: (o) => o.opRequest,
        #opResponse: (o) => o.opResponse,
        #operation: (o) => o.operation,
        #operationChanged: (o) => o.operationChanged,
        #operations: (o) => o.operations,
        #opid: (o) => o.opid,
        #opidChanged: (o) => o.opidChanged,
        #option: (o) => o.option,
        #options: (o) => o.options,
        #param: (o) => o.param,
        #params: (o) => o.params,
        #parent: (o) => o.parent,
        #password: (o) => o.password,
        #path: (o) => o.path,
        #prefix: (o) => o.prefix,
        #readonly: (o) => o.readonly,
        #referenceBatch: (o) => o.referenceBatch,
        #repository: (o) => o.repository,
        #request: (o) => o.request,
        #requestChanged: (o) => o.requestChanged,
        #required: (o) => o.required,
        #resource: (o) => o.resource,
        #response: (o) => o.response,
        #responseChanged: (o) => o.responseChanged,
        #results: (o) => o.results,
        #root: (o) => o.root,
        #rootChanged: (o) => o.rootChanged,
        #rootKey: (o) => o.rootKey,
        #runRequest: (o) => o.runRequest,
        #schema: (o) => o.schema,
        #schemas: (o) => o.schemas,
        #searchFilter: (o) => o.searchFilter,
        #searchFilterChanged: (o) => o.searchFilterChanged,
        #searchTerm: (o) => o.searchTerm,
        #searchTermChanged: (o) => o.searchTermChanged,
        #select: (o) => o.select,
        #selectOperation: (o) => o.selectOperation,
        #selected: (o) => o.selected,
        #selectedId: (o) => o.selectedId,
        #selectedItem: (o) => o.selectedItem,
        #selectedOp: (o) => o.selectedOp,
        #selectedType: (o) => o.selectedType,
        #setDefaultBody: (o) => o.setDefaultBody,
        #showDiagram: (o) => o.showDiagram,
        #showModal: (o) => o.showModal,
        #sort: (o) => o.sort,
        #startsWith: (o) => o.startsWith,
        #status: (o) => o.status,
        #statusText: (o) => o.statusText,
        #summary: (o) => o.summary,
        #timeout: (o) => o.timeout,
        #title: (o) => o.title,
        #toggle: (o) => o.toggle,
        #toggleSelection: (o) => o.toggleSelection,
        #toggleSidebar: (o) => o.toggleSidebar,
        #tracesEnabled: (o) => o.tracesEnabled,
        #tracesEnabledChanged: (o) => o.tracesEnabledChanged,
        #type: (o) => o.type,
        #uid: (o) => o.uid,
        #updateDownloads: (o) => o.updateDownloads,
        #updateOperation: (o) => o.updateOperation,
        #updateSelection: (o) => o.updateSelection,
        #upload: (o) => o.upload,
        #username: (o) => o.username,
        #value: (o) => o.value,
        #versioningOption: (o) => o.versioningOption,
        #voidOp: (o) => o.voidOp,
        #wasUploaded: (o) => o.wasUploaded,
        #widget: (o) => o.widget,
      },
      setters: {
        #adapter: (o, v) { o.adapter = v; },
        #avatar: (o, v) { o.avatar = v; },
        #batch: (o, v) { o.batch = v; },
        #batchId: (o, v) { o.batchId = v; },
        #blobs: (o, v) { o.blobs = v; },
        #body: (o, v) { o.body = v; },
        #canManageTraces: (o, v) { o.canManageTraces = v; },
        #children: (o, v) { o.children = v; },
        #connection: (o, v) { o.connection = v; },
        #connectionId: (o, v) { o.connectionId = v; },
        #contentEnrichers: (o, v) { o.contentEnrichers = v; },
        #contentType: (o, v) { o.contentType = v; },
        #currentItemDiagram: (o, v) { o.currentItemDiagram = v; },
        #currentTab: (o, v) { o.currentTab = v; },
        #dataType: (o, v) { o.dataType = v; },
        #datatype: (o, v) { o.datatype = v; },
        #description: (o, v) { o.description = v; },
        #doc: (o, v) { o.doc = v; },
        #docId: (o, v) { o.docId = v; },
        #document: (o, v) { o.document = v; },
        #documentId: (o, v) { o.documentId = v; },
        #endpoint: (o, v) { o.endpoint = v; },
        #fetchDocument: (o, v) { o.fetchDocument = v; },
        #input: (o, v) { o.input = v; },
        #inputType: (o, v) { o.inputType = v; },
        #isConnected: (o, v) { o.isConnected = v; },
        #isFolderish: (o, v) { o.isFolderish = v; },
        #key: (o, v) { o.key = v; },
        #label: (o, v) { o.label = v; },
        #method: (o, v) { o.method = v; },
        #module: (o, v) { o.module = v; },
        #multiple: (o, v) { o.multiple = v; },
        #multipleSelection: (o, v) { o.multipleSelection = v; },
        #name: (o, v) { o.name = v; },
        #nuxeoUrl: (o, v) { o.nuxeoUrl = v; },
        #opRequest: (o, v) { o.opRequest = v; },
        #opResponse: (o, v) { o.opResponse = v; },
        #operation: (o, v) { o.operation = v; },
        #opid: (o, v) { o.opid = v; },
        #options: (o, v) { o.options = v; },
        #password: (o, v) { o.password = v; },
        #readonly: (o, v) { o.readonly = v; },
        #repository: (o, v) { o.repository = v; },
        #request: (o, v) { o.request = v; },
        #required: (o, v) { o.required = v; },
        #response: (o, v) { o.response = v; },
        #root: (o, v) { o.root = v; },
        #rootKey: (o, v) { o.rootKey = v; },
        #schema: (o, v) { o.schema = v; },
        #schemas: (o, v) { o.schemas = v; },
        #searchFilter: (o, v) { o.searchFilter = v; },
        #searchTerm: (o, v) { o.searchTerm = v; },
        #selected: (o, v) { o.selected = v; },
        #selectedItem: (o, v) { o.selectedItem = v; },
        #selectedOp: (o, v) { o.selectedOp = v; },
        #timeout: (o, v) { o.timeout = v; },
        #tracesEnabled: (o, v) { o.tracesEnabled = v; },
        #type: (o, v) { o.type = v; },
        #uid: (o, v) { o.uid = v; },
        #username: (o, v) { o.username = v; },
        #value: (o, v) { o.value = v; },
        #versioningOption: (o, v) { o.versioningOption = v; },
        #voidOp: (o, v) { o.voidOp = v; },
        #wasUploaded: (o, v) { o.wasUploaded = v; },
        #widget: (o, v) { o.widget = v; },
      },
      parents: {
        smoke_29.NXSandboxApp: smoke_1.PolymerElement,
        smoke_10.NXBatch: smoke_4.NXElement,
        smoke_11.NXBatchReference: smoke_4.NXElement,
        smoke_12.NXBatchUpload: _M5,
        smoke_28.NXCommandEndpoints: _M9,
        smoke_2.NXConnection: _M2,
        smoke_13.NXContentEnrichers: smoke_1.PolymerElement,
        smoke_26.NXOperation: _M3,
        smoke_22.NXRepositoryBrowser: _M5,
        smoke_19.NXRequestMonitor: smoke_4.NXElement,
        smoke_20.NXRequestOptions: smoke_4.NXElement,
        smoke_16.NXResourceEndpoints: _M6,
        smoke_23.NXSchema: _M7,
        smoke_25.NXStructuresBrowser: _M6,
        smoke_18.NXWebAdapters: _M3,
        smoke_9.NXWidget: smoke_1.PolymerElement,
        smoke_8.NXXPath: _M4,
        smoke_7.Tree: _M3,
        smoke_5.TreeNode: _M3,
        smoke_4.NXElement: smoke_1.PolymerElement,
        smoke_4.NXModule: smoke_4.NXElement,
        smoke_21.UISidebar: _M2,
        smoke_0.AutoBindingElement: _M1,
        _M1: _M0,
        _M2: smoke_1.PolymerElement,
        _M3: smoke_4.NXElement,
        _M4: smoke_4.NXElement,
        _M5: smoke_4.NXModule,
        _M6: _M5,
        _M7: smoke_1.PolymerElement,
        _M8: smoke_4.NXModule,
        _M9: _M8,
      },
      declarations: {
        smoke_29.NXSandboxApp: {
          #connection: const Declaration(#connection, smoke_2.NXConnection, annotations: const [smoke_3.observable]),
          #connectionId: const Declaration(#connectionId, String, annotations: const [smoke_1.published]),
          #connectionIdChanged: const Declaration(#connectionIdChanged, Function, kind: METHOD),
          #module: const Declaration(#module, smoke_4.Module, annotations: const [smoke_3.observable]),
          #moduleChanged: const Declaration(#moduleChanged, Function, kind: METHOD),
        },
        smoke_10.NXBatch: {
          #batchId: const Declaration(#batchId, String, annotations: const [smoke_1.published]),
          #readonly: const Declaration(#readonly, bool, annotations: const [smoke_1.published]),
          #wasUploaded: const Declaration(#wasUploaded, bool, annotations: const [smoke_3.observable]),
        },
        smoke_11.NXBatchReference: {
          #readonly: const Declaration(#readonly, bool, annotations: const [smoke_1.published]),
          #selected: const Declaration(#selected, smoke_10.NXBatch, annotations: const [smoke_1.published]),
        },
        smoke_12.NXBatchUpload: {},
        smoke_28.NXCommandEndpoints: {
          #canManageTraces: const Declaration(#canManageTraces, bool, annotations: const [smoke_3.observable]),
          #searchFilter: const Declaration(#searchFilter, String, annotations: const [smoke_3.observable]),
          #searchFilterChanged: const Declaration(#searchFilterChanged, Function, kind: METHOD),
          #searchTerm: const Declaration(#searchTerm, String, annotations: const [smoke_3.observable]),
          #selectedOp: const Declaration(#selectedOp, String, annotations: const [smoke_3.observable]),
          #tracesEnabled: const Declaration(#tracesEnabled, bool, annotations: const [smoke_3.observable]),
          #updateOperation: const Declaration(#updateOperation, Function, kind: METHOD, annotations: const [const smoke_1.ObserveProperty('module.selectedOp')]),
        },
        smoke_2.NXConnection: {
          #avatar: const Declaration(#avatar, String, annotations: const [smoke_3.observable]),
          #canManageTraces: const Declaration(#canManageTraces, bool, annotations: const [smoke_3.observable]),
          #isConnected: const Declaration(#isConnected, bool, annotations: const [smoke_3.observable]),
          #isConnectedChanged: const Declaration(#isConnectedChanged, Function, kind: METHOD),
          #nuxeoUrl: const Declaration(#nuxeoUrl, Object, annotations: const [smoke_3.observable]),
          #nuxeoUrlChanged: const Declaration(#nuxeoUrlChanged, Function, kind: METHOD),
          #password: const Declaration(#password, String, annotations: const [smoke_3.observable]),
          #tracesEnabled: const Declaration(#tracesEnabled, bool, annotations: const [smoke_3.observable]),
          #tracesEnabledChanged: const Declaration(#tracesEnabledChanged, Function, kind: METHOD),
          #username: const Declaration(#username, String, annotations: const [smoke_3.observable]),
        },
        smoke_13.NXContentEnrichers: {
          #contentEnrichers: const Declaration(#contentEnrichers, smoke_15.ObservableMap, annotations: const [smoke_1.published]),
          #request: const Declaration(#request, smoke_14.Request, annotations: const [smoke_1.published]),
          #requestChanged: const Declaration(#requestChanged, Function, kind: METHOD),
        },
        smoke_26.NXOperation: {
          #batch: const Declaration(#batch, smoke_10.NXBatch, annotations: const [smoke_3.observable]),
          #description: const Declaration(#description, String, annotations: const [smoke_3.observable]),
          #label: const Declaration(#label, String, annotations: const [smoke_3.observable]),
          #method: const Declaration(#method, smoke_26.NxOperationMethod, annotations: const [smoke_3.observable]),
          #name: const Declaration(#name, String, annotations: const [smoke_3.observable]),
          #opRequest: const Declaration(#opRequest, smoke_27.OperationRequest, annotations: const [smoke_3.observable]),
          #opResponse: const Declaration(#opResponse, Object, annotations: const [smoke_3.observable]),
          #opid: const Declaration(#opid, String, annotations: const [smoke_1.published]),
          #opidChanged: const Declaration(#opidChanged, Function, kind: METHOD),
        },
        smoke_22.NXRepositoryBrowser: {
          #adapter: const Declaration(#adapter, smoke_18.NxWebAdapter, annotations: const [smoke_3.observable]),
          #adapterChanged: const Declaration(#adapterChanged, Function, kind: METHOD),
          #batch: const Declaration(#batch, Object, annotations: const [smoke_3.observable]),
          #body: const Declaration(#body, String, annotations: const [smoke_3.observable]),
          #document: const Declaration(#document, smoke_6.Document, annotations: const [smoke_3.observable]),
          #documentChanged: const Declaration(#documentChanged, Function, kind: METHOD),
          #documentId: const Declaration(#documentId, String, annotations: const [smoke_1.published]),
          #documentIdChanged: const Declaration(#documentIdChanged, Function, kind: METHOD),
          #method: const Declaration(#method, String, annotations: const [smoke_3.observable]),
          #methodChanged: const Declaration(#methodChanged, Function, kind: METHOD),
          #request: const Declaration(#request, smoke_14.Request, annotations: const [smoke_1.published]),
          #response: const Declaration(#response, Object, annotations: const [smoke_3.observable]),
        },
        smoke_19.NXRequestMonitor: {
          #CURLRequest: const Declaration(#CURLRequest, String, kind: PROPERTY, isFinal: true, annotations: const [smoke_3.observable]),
          #body: const Declaration(#body, Object, annotations: const [smoke_3.observable]),
          #contentType: const Declaration(#contentType, String, annotations: const [smoke_3.observable]),
          #currentTab: const Declaration(#currentTab, String, annotations: const [smoke_3.observable]),
          #request: const Declaration(#request, smoke_6.BaseRequest, annotations: const [smoke_1.published]),
          #requestChanged: const Declaration(#requestChanged, Function, kind: METHOD),
          #response: const Declaration(#response, Object, annotations: const [smoke_1.published]),
          #responseChanged: const Declaration(#responseChanged, Function, kind: METHOD),
          #updateDownloads: const Declaration(#updateDownloads, Function, kind: METHOD, annotations: const [const smoke_1.ObserveProperty('body contentType')]),
        },
        smoke_20.NXRequestOptions: {
          #request: const Declaration(#request, smoke_14.Request, annotations: const [smoke_1.published]),
        },
        smoke_16.NXResourceEndpoints: {
          #batch: const Declaration(#batch, Object, annotations: const [smoke_3.observable]),
          #endpoint: const Declaration(#endpoint, smoke_17.Resource, annotations: const [smoke_3.observable]),
          #operation: const Declaration(#operation, smoke_17.Operation, annotations: const [smoke_3.observable]),
          #operationChanged: const Declaration(#operationChanged, Function, kind: METHOD),
          #request: const Declaration(#request, smoke_14.Request, annotations: const [smoke_3.observable]),
          #response: const Declaration(#response, Object, annotations: const [smoke_3.observable]),
          #searchFilter: const Declaration(#searchFilter, String, annotations: const [smoke_3.observable]),
          #searchTerm: const Declaration(#searchTerm, String, annotations: const [smoke_3.observable]),
          #updateOperation: const Declaration(#updateOperation, Function, kind: METHOD, annotations: const [const smoke_1.ObserveProperty('module.op')]),
        },
        smoke_23.NXSchema: {
          #schema: const Declaration(#schema, smoke_24.Schema, annotations: const [smoke_1.published]),
        },
        smoke_25.NXStructuresBrowser: {
          #currentItemDiagram: const Declaration(#currentItemDiagram, String, annotations: const [smoke_3.observable]),
          #searchFilter: const Declaration(#searchFilter, String, annotations: const [smoke_3.observable]),
          #searchFilterChanged: const Declaration(#searchFilterChanged, Function, kind: METHOD),
          #searchTerm: const Declaration(#searchTerm, String, annotations: const [smoke_3.observable]),
          #selectedId: const Declaration(#selectedId, String, kind: PROPERTY, isFinal: true, annotations: const [smoke_3.observable]),
          #selectedItem: const Declaration(#selectedItem, Object, annotations: const [smoke_3.observable]),
          #selectedType: const Declaration(#selectedType, String, kind: PROPERTY, isFinal: true, annotations: const [smoke_3.observable]),
          #updateSelection: const Declaration(#updateSelection, Function, kind: METHOD, annotations: const [const smoke_1.ObserveProperty('module.selectedId')]),
        },
        smoke_18.NXWebAdapters: {
          #adapter: const Declaration(#adapter, smoke_18.NxWebAdapter, annotations: const [smoke_1.published]),
        },
        smoke_9.NXWidget: {
          #datatype: const Declaration(#datatype, String, annotations: const [smoke_1.published]),
          #label: const Declaration(#label, String, annotations: const [smoke_1.published]),
          #options: const Declaration(#options, List, annotations: const [smoke_1.published]),
          #required: const Declaration(#required, bool, annotations: const [smoke_1.published]),
          #type: const Declaration(#type, String, annotations: const [smoke_1.published]),
          #value: const Declaration(#value, Object, annotations: const [smoke_1.published]),
        },
        smoke_8.NXXPath: {
          #required: const Declaration(#required, bool, annotations: const [smoke_1.published]),
          #searchFilter: const Declaration(#searchFilter, String, annotations: const [smoke_3.observable]),
          #searchFilterChanged: const Declaration(#searchFilterChanged, Function, kind: METHOD),
          #searchTerm: const Declaration(#searchTerm, String, annotations: const [smoke_3.observable]),
          #value: const Declaration(#value, String, annotations: const [smoke_1.published]),
        },
        smoke_7.Tree: {
          #key: const Declaration(#key, String, annotations: const [smoke_1.published]),
          #multipleSelection: const Declaration(#multipleSelection, bool, annotations: const [smoke_1.published]),
          #root: const Declaration(#root, String, annotations: const [smoke_1.published]),
          #rootChanged: const Declaration(#rootChanged, Function, kind: METHOD),
          #rootKey: const Declaration(#rootKey, String, annotations: const [smoke_3.observable]),
          #selected: const Declaration(#selected, Object, kind: PROPERTY, annotations: const [smoke_1.published]),
        },
        smoke_5.TreeNode: {
          #children: const Declaration(#children, List, annotations: const [smoke_1.published]),
          #doc: const Declaration(#doc, smoke_6.Document, annotations: const [smoke_1.published]),
          #docChanged: const Declaration(#docChanged, Function, kind: METHOD),
          #docId: const Declaration(#docId, String, annotations: const [smoke_1.published]),
          #docIdChanged: const Declaration(#docIdChanged, Function, kind: METHOD),
          #icon: const Declaration(#icon, Object, kind: PROPERTY, isFinal: true, annotations: const [smoke_3.observable]),
          #isFolderish: const Declaration(#isFolderish, bool, annotations: const [smoke_3.observable]),
          #multiple: const Declaration(#multiple, bool, annotations: const [smoke_1.published]),
        },
        smoke_4.NXElement: {
          #connection: const Declaration(#connection, smoke_2.NXConnection, annotations: const [smoke_3.observable]),
          #connectionId: const Declaration(#connectionId, String, annotations: const [smoke_1.published]),
          #connectionIdChanged: const Declaration(#connectionIdChanged, Function, kind: METHOD),
          #isConnected: const Declaration(#isConnected, bool, kind: PROPERTY, isFinal: true, annotations: const [smoke_3.observable]),
        },
        smoke_4.NXModule: {},
        smoke_21.UISidebar: {},
        smoke_0.AutoBindingElement: {},
        smoke_1.PolymerElement: {},
        _M4: {
          #searchTermChanged: const Declaration(#searchTermChanged, Function, kind: METHOD),
        },
        _M6: {
          #searchTermChanged: const Declaration(#searchTermChanged, Function, kind: METHOD),
        },
        _M7: {
          #searchTermChanged: const Declaration(#searchTermChanged, Function, kind: METHOD),
        },
        _M8: {
          #searchTermChanged: const Declaration(#searchTermChanged, Function, kind: METHOD),
        },
      },
      names: {
        #CURLRequest: r'CURLRequest',
        #action: r'action',
        #adapter: r'adapter',
        #adapterChanged: r'adapterChanged',
        #adapters: r'adapters',
        #alert: r'alert',
        #alerts: r'alerts',
        #alphabetically: r'alphabetically',
        #asBlobUrl: r'asBlobUrl',
        #asCSV: r'asCSV',
        #asFileSize: r'asFileSize',
        #asJson: r'asJson',
        #avatar: r'avatar',
        #batch: r'batch',
        #batchId: r'batchId',
        #batches: r'batches',
        #blob: r'blob',
        #blobs: r'blobs',
        #body: r'body',
        #callOp: r'callOp',
        #canManageTraces: r'canManageTraces',
        #capitalize: r'capitalize',
        #categories: r'categories',
        #category: r'category',
        #child: r'child',
        #children: r'children',
        #clearBatch: r'clearBatch',
        #connect: r'connect',
        #connection: r'connection',
        #connectionId: r'connectionId',
        #connectionIdChanged: r'connectionIdChanged',
        #contentEnrichers: r'contentEnrichers',
        #contentType: r'contentType',
        #currentItemDiagram: r'currentItemDiagram',
        #currentTab: r'currentTab',
        #dataType: r'dataType',
        #datatype: r'datatype',
        #delete: r'delete',
        #description: r'description',
        #disconnect: r'disconnect',
        #doc: r'doc',
        #docChanged: r'docChanged',
        #docId: r'docId',
        #docIdChanged: r'docIdChanged',
        #document: r'document',
        #documentChanged: r'documentChanged',
        #documentId: r'documentId',
        #documentIdChanged: r'documentIdChanged',
        #downloads: r'downloads',
        #endpoint: r'endpoint',
        #endpointKey: r'endpointKey',
        #endpoints: r'endpoints',
        #enumerate: r'enumerate',
        #error: r'error',
        #errors: r'errors',
        #facet: r'facet',
        #facets: r'facets',
        #fetchDocument: r'fetchDocument',
        #field: r'field',
        #fields: r'fields',
        #filename: r'filename',
        #filenames: r'filenames',
        #filter: r'filter',
        #goHome: r'goHome',
        #goRoot: r'goRoot',
        #headers: r'headers',
        #icon: r'icon',
        #id: r'id',
        #inSeconds: r'inSeconds',
        #index: r'index',
        #input: r'input',
        #inputType: r'inputType',
        #isBodyParam: r'isBodyParam',
        #isComplex: r'isComplex',
        #isConnected: r'isConnected',
        #isConnectedChanged: r'isConnectedChanged',
        #isEmpty: r'isEmpty',
        #isFolderish: r'isFolderish',
        #isNotEmpty: r'isNotEmpty',
        #item: r'item',
        #items: r'items',
        #key: r'key',
        #keys: r'keys',
        #keyup: r'keyup',
        #label: r'label',
        #length: r'length',
        #message: r'message',
        #method: r'method',
        #methodChanged: r'methodChanged',
        #methodColors: r'methodColors',
        #methods: r'methods',
        #mimetype: r'mimetype',
        #module: r'module',
        #moduleChanged: r'moduleChanged',
        #modules: r'modules',
        #multiple: r'multiple',
        #multipleSelection: r'multipleSelection',
        #name: r'name',
        #navigate: r'navigate',
        #nodeSelected: r'nodeSelected',
        #nuxeoUrl: r'nuxeoUrl',
        #nuxeoUrlChanged: r'nuxeoUrlChanged',
        #onFileSelected: r'onFileSelected',
        #op: r'op',
        #opRequest: r'opRequest',
        #opResponse: r'opResponse',
        #operation: r'operation',
        #operationChanged: r'operationChanged',
        #operations: r'operations',
        #opid: r'opid',
        #opidChanged: r'opidChanged',
        #option: r'option',
        #options: r'options',
        #param: r'param',
        #params: r'params',
        #parent: r'parent',
        #password: r'password',
        #path: r'path',
        #prefix: r'prefix',
        #readonly: r'readonly',
        #referenceBatch: r'referenceBatch',
        #repository: r'repository',
        #request: r'request',
        #requestChanged: r'requestChanged',
        #required: r'required',
        #resource: r'resource',
        #response: r'response',
        #responseChanged: r'responseChanged',
        #results: r'results',
        #root: r'root',
        #rootChanged: r'rootChanged',
        #rootKey: r'rootKey',
        #runRequest: r'runRequest',
        #schema: r'schema',
        #schemas: r'schemas',
        #searchFilter: r'searchFilter',
        #searchFilterChanged: r'searchFilterChanged',
        #searchTerm: r'searchTerm',
        #searchTermChanged: r'searchTermChanged',
        #select: r'select',
        #selectOperation: r'selectOperation',
        #selected: r'selected',
        #selectedId: r'selectedId',
        #selectedItem: r'selectedItem',
        #selectedOp: r'selectedOp',
        #selectedType: r'selectedType',
        #setDefaultBody: r'setDefaultBody',
        #showDiagram: r'showDiagram',
        #showModal: r'showModal',
        #sort: r'sort',
        #startsWith: r'startsWith',
        #status: r'status',
        #statusText: r'statusText',
        #summary: r'summary',
        #timeout: r'timeout',
        #title: r'title',
        #toggle: r'toggle',
        #toggleSelection: r'toggleSelection',
        #toggleSidebar: r'toggleSidebar',
        #tracesEnabled: r'tracesEnabled',
        #tracesEnabledChanged: r'tracesEnabledChanged',
        #type: r'type',
        #uid: r'uid',
        #updateDownloads: r'updateDownloads',
        #updateOperation: r'updateOperation',
        #updateSelection: r'updateSelection',
        #upload: r'upload',
        #username: r'username',
        #value: r'value',
        #versioningOption: r'versioningOption',
        #voidOp: r'voidOp',
        #wasUploaded: r'wasUploaded',
        #widget: r'widget',
      }));
  new LogInjector().injectLogsFromUrl('index.html._buildLogs');
  configureForDeployment();
  return i0.main();
}
