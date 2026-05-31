cmake_minimum_required(VERSION 3.30)

project(SilikoCoreManual LANGUAGES NONE)

set(FOP_CONFIG_FILE    "~/.config/fop/fop.conf"
    CACHE FILEPATH "")
set(DOCBOOK_SCHEMA_DIR "~/.local/share/xml/docbook/schema/5.1/schemas"
    CACHE PATH "")

set(RNGFILE   "${DOCBOOK_SCHEMA_DIR}/rng/docbook.rng")
set(RNGXIFILE "${DOCBOOK_SCHEMA_DIR}/rng/docbookxi.rng")

set(BOOK_XI_FILES
    SilikoCoreManual.xml
)

set(BOOK_NX_FILES
)

set(ARTICLE_XI_FILES
    ApiReference.xml
)

set(ARTICLE_NX_FILES
    Build.xml
    Integrating.xml
    LanguageReference.xml
    Linking.xml
    Parsing.xml
    Tutorial.xml
)

set(REFENTRY_XI_FILES
)

set(REFENTRY_NX_FILES
    ApiReference.SilikoEngine.xml
    ApiReference.SilikoEngineCallFunction.xml
    ApiReference.SilikoEngineCreate.xml
    ApiReference.SilikoEngineDestroy.xml
    ApiReference.SilikoEngineFetchFunction.xml
    ApiReference.SilikoEngineInstallFunction.xml
    ApiReference.SilikoError.xml
    ApiReference.SilikoEvaluate.xml
    ApiReference.SilikoFunction.xml
    ApiReference.SilikoFunctionCall.xml
    ApiReference.SilikoFunctionCreate.xml
    ApiReference.SilikoFunctionDestroy.xml
    ApiReference.SilikoFunctionVTable.xml
    ApiReference.SilikoInput.xml
    ApiReference.SilikoInputAdvance.xml
    ApiReference.SilikoInputCreate.xml
    ApiReference.SilikoInputDestroy.xml
    ApiReference.SilikoInputGetCharacter.xml
    ApiReference.SilikoInputVTable.xml
    ApiReference.SilikoInstallMathFunctions.xml
    ApiReference.SilikoInstallOperations.xml
    ApiReference.SilikoLexer.xml
    ApiReference.SilikoLexerAdvance.xml
    ApiReference.SilikoLexerCreate.xml
    ApiReference.SilikoLexerDestroy.xml
    ApiReference.SilikoLexerGetToken.xml
    ApiReference.SilikoMathAbs.xml
    ApiReference.SilikoMathAcos.xml
    ApiReference.SilikoMathAsin.xml
    ApiReference.SilikoMathAtan.xml
    ApiReference.SilikoMathCbrt.xml
    ApiReference.SilikoMathCeil.xml
    ApiReference.SilikoMathCos.xml
    ApiReference.SilikoMathCosh.xml
    ApiReference.SilikoMathExp.xml
    ApiReference.SilikoMathFloor.xml
    ApiReference.SilikoMathHypot.xml
    ApiReference.SilikoMathLog.xml
    ApiReference.SilikoMathLog10.xml
    ApiReference.SilikoMathLog2.xml
    ApiReference.SilikoMathRound.xml
    ApiReference.SilikoMathSin.xml
    ApiReference.SilikoMathSinh.xml
    ApiReference.SilikoMathSqrt.xml
    ApiReference.SilikoMathTan.xml
    ApiReference.SilikoMathTanh.xml
    ApiReference.SilikoMathTrunc.xml
    ApiReference.SilikoNode.xml
    ApiReference.SilikoNodeAssign.xml
    ApiReference.SilikoNodeAssignBranch.xml
    ApiReference.SilikoNodeAssignFromError.xml
    ApiReference.SilikoNodeAssignFromInteger.xml
    ApiReference.SilikoNodeAssignFromReal.xml
    ApiReference.SilikoNodeAssignFromValue.xml
    ApiReference.SilikoNodeCopy.xml
    ApiReference.SilikoNodeCountChildren.xml
    ApiReference.SilikoNodeCreateBranch.xml
    ApiReference.SilikoNodeCreateFromError.xml
    ApiReference.SilikoNodeCreateFromInteger.xml
    ApiReference.SilikoNodeCreateFromReal.xml
    ApiReference.SilikoNodeCreateFromValue.xml
    ApiReference.SilikoNodeCreateNothing.xml
    ApiReference.SilikoNodeDestroy.xml
    ApiReference.SilikoNodeFetchChild.xml
    ApiReference.SilikoNodeGetId.xml
    ApiReference.SilikoNodeGetStatus.xml
    ApiReference.SilikoNodeGetValue.xml
    ApiReference.SilikoNodeInsert.xml
    ApiReference.SilikoNodeInsertCopy.xml
    ApiReference.SilikoNodeIsNegated.xml
    ApiReference.SilikoNodeNegate.xml
    ApiReference.SilikoNodePruneChild.xml
    ApiReference.SilikoNodePushCopyLeft.xml
    ApiReference.SilikoNodePushCopyRight.xml
    ApiReference.SilikoNodePushLeft.xml
    ApiReference.SilikoNodePushRight.xml
    ApiReference.SilikoNodeStatus.xml
    ApiReference.SilikoOperationAdd.xml
    ApiReference.SilikoOperationDiceCreate.xml
    ApiReference.SilikoOperationDivide.xml
    ApiReference.SilikoOperationMultiply.xml
    ApiReference.SilikoOperationPower.xml
    ApiReference.SilikoOperationSubtract.xml
    ApiReference.SilikoParseInfix.xml
    ApiReference.SilikoPureFunctionCreate.xml
    ApiReference.SilikoStringInputCreate.xml
    ApiReference.SilikoToken.xml
    ApiReference.SilikoTokenAssign.xml
    ApiReference.SilikoTokenAssignEndOfInput.xml
    ApiReference.SilikoTokenAssignFromCharacter.xml
    ApiReference.SilikoTokenAssignFromId.xml
    ApiReference.SilikoTokenAssignFromInteger.xml
    ApiReference.SilikoTokenAssignFromReal.xml
    ApiReference.SilikoTokenCopy.xml
    ApiReference.SilikoTokenCreate.xml
    ApiReference.SilikoTokenCreateEndOfInput.xml
    ApiReference.SilikoTokenCreateFromCharacter.xml
    ApiReference.SilikoTokenCreateFromId.xml
    ApiReference.SilikoTokenCreateFromInteger.xml
    ApiReference.SilikoTokenCreateFromReal.xml
    ApiReference.SilikoTokenDestroy.xml
    ApiReference.SilikoTokenGetCharacter.xml
    ApiReference.SilikoTokenGetId.xml
    ApiReference.SilikoTokenGetInteger.xml
    ApiReference.SilikoTokenGetReal.xml
    ApiReference.SilikoTokenGetStatus.xml
    ApiReference.SilikoTokenStatus.xml
    ApiReference.SilikoValue.xml
    ApiReference.SilikoValueAssign.xml
    ApiReference.SilikoValueAssignFromError.xml
    ApiReference.SilikoValueAssignFromInteger.xml
    ApiReference.SilikoValueAssignFromReal.xml
    ApiReference.SilikoValueCopy.xml
    ApiReference.SilikoValueCreate.xml
    ApiReference.SilikoValueCreateFromError.xml
    ApiReference.SilikoValueCreateFromInteger.xml
    ApiReference.SilikoValueCreateFromReal.xml
    ApiReference.SilikoValueDestroy.xml
    ApiReference.SilikoValueGetError.xml
    ApiReference.SilikoValueGetInteger.xml
    ApiReference.SilikoValueGetReal.xml
    ApiReference.SilikoValueGetStatus.xml
    ApiReference.SilikoValueNegate.xml
    ApiReference.SilikoValueStatus.xml
)

set(FO_DIR   fo)
set(PDF_DIR  pdf)
set(MD_DIR   md)
set(MAN_DIR  man)

set(DB_DIR   docbook)
set(XSL_DIR  xsl)

find_program(SAXON   saxon)
find_program(SAXON6  saxon6)
find_program(FOP     fop)
find_program(PANDOC  pandoc)

set(FO_FILES)
set(PDF_FILES)
set(MAN_FILES)

set(SilikoCoreManual_DEPS)
foreach(xML_FILE ${ARTICLE_XI_FILES} ${ARTICLE_NX_FILES})
    list(APPEND SilikoCoreManual_DEPS "${DB_DIR}/${XML_FILE}")
endforeach()

set(ApiReference_DEPS)
foreach(XML_FILE ${REFENTRY_NX_FILES})
    list(APPEND SilikoCoreManual_DEPS "${DB_DIR}/${XML_FILE}")
    list(APPEND ApiReference_DEPS "${DB_DIR}/${XML_FILE}")
endforeach()



add_custom_command(
    OUTPUT
        ${FO_DIR}
        ${PDF_DIR}
        ${MAN_DIR}
    COMMAND cmake -E make_directory
        ${FO_DIR}
        ${PDF_DIR}
        ${MAN_DIR}
)

add_custom_command(
    OUTPUT ${FO_DIR}/SilikoCoreManual.fo
    COMMAND ${SAXON} -xi
        -o:${CMAKE_CURRENT_BINARY_DIR}/${FO_DIR}/SilikoCoreManual.fo
        -s:${CMAKE_CURRENT_SOURCE_DIR}/${DB_DIR}/SilikoCoreManual.xml
        -xsl:${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/fo.book.xsl
    DEPENDS
        ${DB_DIR}/SilikoCoreManual.xml
        ${SilikoCoreManual_DEPS}
        ${XSL_DIR}/fo.book.xsl
        ${XSL_DIR}/fo.common.xsl
        ${FO_DIR}
)
list(APPEND FO_FILES ${FO_DIR}/SilikoCoreManual.fo)

add_custom_command(
    OUTPUT ${FO_DIR}/ApiReference.fo
    COMMAND ${SAXON} -xi
        -o:${CMAKE_CURRENT_BINARY_DIR}/${FO_DIR}/ApiReference.fo
        -s:${CMAKE_CURRENT_SOURCE_DIR}/${DB_DIR}/ApiReference.xml
        -xsl:${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/fo.article.xsl
    DEPENDS
        ${DB_DIR}/ApiReference.xml
        ${ApiReference_DEPS}
        ${XSL_DIR}/fo.article.xsl
        ${XSL_DIR}/fo.common.xsl
        ${FO_DIR}
)
list(APPEND FO_FILES ${FO_DIR}/ApiReference.fo)

foreach(XML_FILE ${ARTICLE_NX_FILES})
    string(REPLACE ".xml" ".fo" FO_FILE ${XML_FILE})
    add_custom_command(
        OUTPUT ${FO_DIR}/${FO_FILE}
        COMMAND ${SAXON}
            -o:${FO_DIR}/${FO_FILE}
            -s:${CMAKE_CURRENT_SOURCE_DIR}/${DB_DIR}/${XML_FILE}
            -xsl:${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/fo.article.xsl
        DEPENDS
            ${DB_DIR}/${XML_FILE}
            ${XSL_DIR}/fo.article.xsl
            ${XSL_DIR}/fo.common.xsl
            ${FO_DIR}
    )
    list(APPEND FO_FILES ${FO_DIR}/${FO_FILE})
endforeach()


foreach(XML_FILE ${REFENTRY_NX_FILES})
    string(REPLACE ".xml" ".fo" FO_FILE ${XML_FILE})
    add_custom_command(
        OUTPUT ${FO_DIR}/${FO_FILE}
        COMMAND ${SAXON}
            -o:${FO_DIR}/${FO_FILE}
            -s:${CMAKE_CURRENT_SOURCE_DIR}/${DB_DIR}/${XML_FILE}
            -xsl:${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/fo.refentry.xsl
        DEPENDS
            ${DB_DIR}/${XML_FILE}
            ${XSL_DIR}/fo.refentry.xsl
            ${XSL_DIR}/fo.common.xsl
            ${FO_DIR}
    )
    list(APPEND FO_FILES "${FO_DIR}/${FO_FILE}")

    string(REPLACE "ApiReference." "" MAN_FILE ${XML_FILE})
    string(REPLACE ".xml" ".1" MAN_FILE ${MAN_FILE})
    add_custom_command(
        OUTPUT ${MAN_DIR}/${MAN_FILE}
        COMMAND ${SAXON6}
            ${CMAKE_CURRENT_SOURCE_DIR}/${DB_DIR}/${XML_FILE}
            ${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/man.refentry.xsl
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${MAN_DIR}
        DEPENDS
            ${DB_DIR}/${XML_FILE}
            ${XSL_DIR}/man.refentry.xsl
            ${XSL_DIR}/man.common.xsl
            ${MAN_DIR}
    )
    list(APPEND MAN_FILES ${MAN_DIR}/${MAN_FILE})
endforeach()

foreach(FO_FILE ${FO_FILES})
    string(REPLACE ".fo" ".pdf" PDF_FILE ${FO_FILE})
    string(REPLACE "${FO_DIR}/" "${PDF_DIR}/" PDF_FILE ${PDF_FILE})
    add_custom_command(
        OUTPUT ${PDF_FILE}
        COMMAND ${FOP}
            -c ${FOP_CONFIG_FILE}
            ${FO_FILE}
            ${PDF_FILE}
        DEPENDS
            ${FO_FILE}
            ${PDF_DIR}
    )
    list(APPEND PDF_FILES ${PDF_FILE})
endforeach()

add_custom_target(Documentation ALL
    DEPENDS
        ${FO_FILES}
        ${PDF_FILES}
        ${MAN_FILES}
)
