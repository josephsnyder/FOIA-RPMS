 ;BSTS.DtsDaoPort.1
 ;(C)InterSystems, generated for class BSTS.DtsDaoPort.  Do NOT edit. 10/22/2016 08:53:34AM
 ;;6371794B;BSTS.DtsDaoPort
 ;
zaddAuthority(arg0) public {
 Quit ..WebMethod("addAuthority").Invoke($this,"",.arg0) }
zaddAuthorityProperty(authority,property) public {
 Quit ..WebMethod("addAuthorityProperty").Invoke($this,"",.authority,.property) }
zaddConcept(concept) public {
 Quit ..WebMethod("addConcept").Invoke($this,"",.concept) }
zaddNamespace(namespace) public {
 Quit ..WebMethod("addNamespace").Invoke($this,"",.namespace) }
zaddNamespaceProperty(namespaceId,property) public {
 Quit ..WebMethod("addNamespaceProperty").Invoke($this,"",.namespaceId,.property) }
zaddVersion(arg0) public {
 Quit ..WebMethod("addVersion").Invoke($this,"",.arg0) }
zaddVersionProperty(version,property) public {
 Quit ..WebMethod("addVersionProperty").Invoke($this,"",.version,.property) }
zdeleteAuthorityById(arg0) public {
 Quit ..WebMethod("deleteAuthorityById").Invoke($this,"",.arg0) }
zdeleteAuthorityByName(arg0) public {
 Quit ..WebMethod("deleteAuthorityByName").Invoke($this,"",.arg0) }
zdeleteAuthorityProperty(authority,property) public {
 Quit ..WebMethod("deleteAuthorityProperty").Invoke($this,"",.authority,.property) }
zdeleteConcept(concept) public {
 Quit ..WebMethod("deleteConcept").Invoke($this,"",.concept) }
zdeleteNamespaceById(namespaceId) public {
 Quit ..WebMethod("deleteNamespaceById").Invoke($this,"",.namespaceId) }
zdeleteNamespaceByName(namespaceName) public {
 Quit ..WebMethod("deleteNamespaceByName").Invoke($this,"",.namespaceName) }
zdeleteNamespaceProperty(namespaceId,property) public {
 Quit ..WebMethod("deleteNamespaceProperty").Invoke($this,"",.namespaceId,.property) }
zdeleteVersionById(arg0,arg1) public {
 Quit ..WebMethod("deleteVersionById").Invoke($this,"",.arg0,.arg1) }
zdeleteVersionByName(arg0,arg1) public {
 Quit ..WebMethod("deleteVersionByName").Invoke($this,"",.arg0,.arg1) }
zdeleteVersionProperty(version,property) public {
 Quit ..WebMethod("deleteVersionProperty").Invoke($this,"",.version,.property) }
zexecuteConceptTextSearch(sql,casd) public {
 Quit ..WebMethod("executeConceptTextSearch").Invoke($this,"",.sql,.casd) }
zexecuteSQL(sql) public {
 Quit ..WebMethod("executeSQL").Invoke($this,"",.sql) }
zfindAssociationTypeById(id,namespaceId) public {
 Quit ..WebMethod("findAssociationTypeById").Invoke($this,"",.id,.namespaceId) }
zfindAssociationTypeByName(name,namespaceId) public {
 Quit ..WebMethod("findAssociationTypeByName").Invoke($this,"",.name,.namespaceId) }
zfindAuthorityPropertyTypeById(id,authorityId) public {
 Quit ..WebMethod("findAuthorityPropertyTypeById").Invoke($this,"",.id,.authorityId) }
zfindAuthorityPropertyTypeByNam(name,authorityId) public {
 Quit ..WebMethod("findAuthorityPropertyTypeByName").Invoke($this,"",.name,.authorityId) }
zfindAuthorityQualifierTypeById(id,authorityId) public {
 Quit ..WebMethod("findAuthorityQualifierTypeById").Invoke($this,"",.id,.authorityId) }
zfindAuthorityQualifierTypeByNa(name,authorityId) public {
 Quit ..WebMethod("findAuthorityQualifierTypeByName").Invoke($this,"",.name,.authorityId) }
zfindConceptByCode(conceptCode,namespaceId,attributeSetDescriptor) public {
 Quit ..WebMethod("findConceptByCode").Invoke($this,"",.conceptCode,.namespaceId,.attributeSetDescriptor) }
zfindConceptById(conceptId,namespaceId,attributeSetDescriptor) public {
 Quit ..WebMethod("findConceptById").Invoke($this,"",.conceptId,.namespaceId,.attributeSetDescriptor) }
zfindConceptByName(conceptName,namespaceId,attributeSetDescriptor) public {
 Quit ..WebMethod("findConceptByName").Invoke($this,"",.conceptName,.namespaceId,.attributeSetDescriptor) }
zfindConceptsWithAllSynonymMatc(pattern,options) public {
 Quit ..WebMethod("findConceptsWithAllSynonymMatching").Invoke($this,"",.pattern,.options) }
zfindConceptsWithConceptAssocia(associationType,pattern,options) public {
 Quit ..WebMethod("findConceptsWithConceptAssociationMatching").Invoke($this,"",.associationType,.pattern,.options) }
zfindConceptsWithInverseConcept(associationType,pattern,options) public {
 Quit ..WebMethod("findConceptsWithInverseConceptAssociationMatching").Invoke($this,"",.associationType,.pattern,.options) }
zfindConceptsWithInverseRoleMat(roleType,pattern,options) public {
 Quit ..WebMethod("findConceptsWithInverseRoleMatching").Invoke($this,"",.roleType,.pattern,.options) }
zfindConceptsWithNameMatching(pattern,options) public {
 Quit ..WebMethod("findConceptsWithNameMatching").Invoke($this,"",.pattern,.options) }
zfindConceptsWithPropertyMatchi(propType,pattern,options) public {
 Quit ..WebMethod("findConceptsWithPropertyMatching").Invoke($this,"",.propType,.pattern,.options) }
zfindConceptsWithRoleMatching(roleType,pattern,options) public {
 Quit ..WebMethod("findConceptsWithRoleMatching").Invoke($this,"",.roleType,.pattern,.options) }
zfindConceptsWithSynonymMatchin(associationType,pattern,options) public {
 Quit ..WebMethod("findConceptsWithSynonymMatching").Invoke($this,"",.associationType,.pattern,.options) }
zfindNamespaceByCode(namespaceCode,attributeSetDescriptor) public {
 Quit ..WebMethod("findNamespaceByCode").Invoke($this,"",.namespaceCode,.attributeSetDescriptor) }
zfindNamespaceById(namespaceId,attributeSetDescriptor) public {
 Quit ..WebMethod("findNamespaceById").Invoke($this,"",.namespaceId,.attributeSetDescriptor) }
zfindNamespaceByName(namespaceName,attributeSetDescriptor) public {
 Quit ..WebMethod("findNamespaceByName").Invoke($this,"",.namespaceName,.attributeSetDescriptor) }
zfindPropertyTypeById(id,namespaceId) public {
 Quit ..WebMethod("findPropertyTypeById").Invoke($this,"",.id,.namespaceId) }
zfindPropertyTypeByName(name,namespaceId) public {
 Quit ..WebMethod("findPropertyTypeByName").Invoke($this,"",.name,.namespaceId) }
zfindQualifierTypeById(id,namespaceId) public {
 Quit ..WebMethod("findQualifierTypeById").Invoke($this,"",.id,.namespaceId) }
zfindQualifierTypeByName(name,namespaceId) public {
 Quit ..WebMethod("findQualifierTypeByName").Invoke($this,"",.name,.namespaceId) }
zfindSubsetPropertyTypeById(id,subsetId) public {
 Quit ..WebMethod("findSubsetPropertyTypeById").Invoke($this,"",.id,.subsetId) }
zfindSubsetPropertyTypeByName(name,subsetId) public {
 Quit ..WebMethod("findSubsetPropertyTypeByName").Invoke($this,"",.name,.subsetId) }
zfindSubsetQualifierTypeById(id,subsetId) public {
 Quit ..WebMethod("findSubsetQualifierTypeById").Invoke($this,"",.id,.subsetId) }
zfindSubsetQualifierTypeByName(name,subsetId) public {
 Quit ..WebMethod("findSubsetQualifierTypeByName").Invoke($this,"",.name,.subsetId) }
zfindTermByCode(termCode,namespaceId,attributeSetDescriptor) public {
 Quit ..WebMethod("findTermByCode").Invoke($this,"",.termCode,.namespaceId,.attributeSetDescriptor) }
zfindTermById(termId,namespaceId,attributeSetDescriptor) public {
 Quit ..WebMethod("findTermById").Invoke($this,"",.termId,.namespaceId,.attributeSetDescriptor) }
zfindTermsByName(termName,namespaceId,attributeSetDescriptor) public {
 Quit ..WebMethod("findTermsByName").Invoke($this,"",.termName,.namespaceId,.attributeSetDescriptor) }
zfindTermsWithInverseTermAssoci(associationType,pattern,options) public {
 Quit ..WebMethod("findTermsWithInverseTermAssociationMatching").Invoke($this,"",.associationType,.pattern,.options) }
zfindTermsWithNameMatching(pattern,options) public {
 Quit ..WebMethod("findTermsWithNameMatching").Invoke($this,"",.pattern,.options) }
zfindTermsWithPropertyMatching(propertyType,pattern,options) public {
 Quit ..WebMethod("findTermsWithPropertyMatching").Invoke($this,"",.propertyType,.pattern,.options) }
zfindTermsWithTermAssociationMa(associationType,pattern,options) public {
 Quit ..WebMethod("findTermsWithTermAssociationMatching").Invoke($this,"",.associationType,.pattern,.options) }
zgetAllNamespaceQualifierTypes(namespaceId) public {
 Quit ..WebMethod("getAllNamespaceQualifierTypes").Invoke($this,"",.namespaceId) }
zgetAllSubsetQualifierTypes(subsetId) public {
 Quit ..WebMethod("getAllSubsetQualifierTypes").Invoke($this,"",.subsetId) }
zgetAssociationNavChildContext(focusConcept,attributeSetDescriptor,arg2) public {
 Quit ..WebMethod("getAssociationNavChildContext").Invoke($this,"",.focusConcept,.attributeSetDescriptor,.arg2) }
zgetAssociationNavParentContext(focusConcept,attributeSetDescriptor,namespace) public {
 Quit ..WebMethod("getAssociationNavParentContext").Invoke($this,"",.focusConcept,.attributeSetDescriptor,.namespace) }
zgetAssociationTypes(namespaceId) public {
 Quit ..WebMethod("getAssociationTypes").Invoke($this,"",.namespaceId) }
zgetAuthorities() public {
 Quit ..WebMethod("getAuthorities").Invoke($this,"") }
zgetAuthorityPropertyQualifierT(authorityId) public {
 Quit ..WebMethod("getAuthorityPropertyQualifierTypes").Invoke($this,"",.authorityId) }
zgetAuthorityPropertyTypes(authorityId) public {
 Quit ..WebMethod("getAuthorityPropertyTypes").Invoke($this,"",.authorityId) }
zgetConceptAssociationTypes(namespaceId) public {
 Quit ..WebMethod("getConceptAssociationTypes").Invoke($this,"",.namespaceId) }
zgetConceptChildRoots(attributeSetDescriptor,namespaceId) public {
 Quit ..WebMethod("getConceptChildRoots").Invoke($this,"",.attributeSetDescriptor,.namespaceId) }
zgetConceptPropertyQualifierTyp(namespaceId) public {
 Quit ..WebMethod("getConceptPropertyQualifierTypes").Invoke($this,"",.namespaceId) }
zgetConceptPropertyTypes(namespaceId) public {
 Quit ..WebMethod("getConceptPropertyTypes").Invoke($this,"",.namespaceId) }
zgetNamespacePropertyQualifierT(namespaceId) public {
 Quit ..WebMethod("getNamespacePropertyQualifierTypes").Invoke($this,"",.namespaceId) }
zgetNamespacePropertyTypes(namespaceId) public {
 Quit ..WebMethod("getNamespacePropertyTypes").Invoke($this,"",.namespaceId) }
zgetNamespaces() public {
 Quit ..WebMethod("getNamespaces").Invoke($this,"") }
zgetNavChildContext(focusConcept,attributeSetDescriptor) public {
 Quit ..WebMethod("getNavChildContext").Invoke($this,"",.focusConcept,.attributeSetDescriptor) }
zgetNavParentContext(focusConcept,attributeSetDescriptor) public {
 Quit ..WebMethod("getNavParentContext").Invoke($this,"",.focusConcept,.attributeSetDescriptor) }
zgetRoleTypes(namespaceId) public {
 Quit ..WebMethod("getRoleTypes").Invoke($this,"",.namespaceId) }
zgetSubsetPropertyQualifierType(subsetId) public {
 Quit ..WebMethod("getSubsetPropertyQualifierTypes").Invoke($this,"",.subsetId) }
zgetSubsetPropertyTypes(subsetId) public {
 Quit ..WebMethod("getSubsetPropertyTypes").Invoke($this,"",.subsetId) }
zgetSubsetVersionPropertyQualif(subsetId) public {
 Quit ..WebMethod("getSubsetVersionPropertyQualifierTypes").Invoke($this,"",.subsetId) }
zgetSubsetVersionPropertyTypes(subsetId) public {
 Quit ..WebMethod("getSubsetVersionPropertyTypes").Invoke($this,"",.subsetId) }
zgetSynonymTypes(namespaceId) public {
 Quit ..WebMethod("getSynonymTypes").Invoke($this,"",.namespaceId) }
zgetTermAssociationTypes(namespaceId) public {
 Quit ..WebMethod("getTermAssociationTypes").Invoke($this,"",.namespaceId) }
zgetTermPropertyQualifierTypes(namespaceId) public {
 Quit ..WebMethod("getTermPropertyQualifierTypes").Invoke($this,"",.namespaceId) }
zgetTermPropertyTypes(namespaceId) public {
 Quit ..WebMethod("getTermPropertyTypes").Invoke($this,"",.namespaceId) }
zgetVersionPropertyQualifierTyp(namespaceId) public {
 Quit ..WebMethod("getVersionPropertyQualifierTypes").Invoke($this,"",.namespaceId) }
zgetVersionPropertyTypes(namespaceId) public {
 Quit ..WebMethod("getVersionPropertyTypes").Invoke($this,"",.namespaceId) }
zgetVersions(namespaceId) public {
 Quit ..WebMethod("getVersions").Invoke($this,"",.namespaceId) }
zisAssociationTypeUsed(assocType) public {
 Quit ..WebMethod("isAssociationTypeUsed").Invoke($this,"",.assocType) }
zisPropertyTypeUsed(propType) public {
 Quit ..WebMethod("isPropertyTypeUsed").Invoke($this,"",.propType) }
zisQualifierTypeUsed(type) public {
 Quit ..WebMethod("isQualifierTypeUsed").Invoke($this,"",.type) }
zupdateAuthority(arg0,arg1) public {
 Quit ..WebMethod("updateAuthority").Invoke($this,"",.arg0,.arg1) }
zupdateAuthorityProperty(authority,oldProp,newProp) public {
 Quit ..WebMethod("updateAuthorityProperty").Invoke($this,"",.authority,.oldProp,.newProp) }
zupdateConcept(oldConcept,newConcept) public {
 Quit ..WebMethod("updateConcept").Invoke($this,"",.oldConcept,.newConcept) }
zupdateNamespace(oldNamespace,newNamespace) public {
 Quit ..WebMethod("updateNamespace").Invoke($this,"",.oldNamespace,.newNamespace) }
zupdateNamespaceProperty(namespaceId,oldProp,newProp) public {
 Quit ..WebMethod("updateNamespaceProperty").Invoke($this,"",.namespaceId,.oldProp,.newProp) }
zupdateVersion(arg0,arg1) public {
 Quit ..WebMethod("updateVersion").Invoke($this,"",.arg0,.arg1) }
zupdateVersionProperty(version,oldProp,newProp) public {
 Quit ..WebMethod("updateVersionProperty").Invoke($this,"",.version,.oldProp,.newProp) }
