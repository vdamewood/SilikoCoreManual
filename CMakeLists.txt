cmake_minimum_required(VERSION 3.30)

project(SilikoCoreManual LANGUAGES NONE)

set(FOP_CONFIG_FILE    "~/.config/fop/fop.conf"
    CACHE FILEPATH "")
set(DOCBOOK_SCHEMA_DIR "~/.local/share/xml/docbook/schema/5.1/schemas"
    CACHE PATH "")

set(RNGFILE   "${DOCBOOK_SCHEMA_DIR}/rng/docbook.rng")
set(RNGXIFILE "${DOCBOOK_SCHEMA_DIR}/rng/docbookxi.rng")

set(FO_DIR   fo)
set(PDF_DIR  pdf)
set(MD_DIR   md)
set(MAN_DIR  man)
set(DB_DIR   docbook)
set(SVG_DIR  svg)
set(XSL_DIR  xsl)

set(BOOK_FILES
    ${DB_DIR}/SilikoCoreManual.xml
)

set(ARTICLE_FILES
    ${DB_DIR}/ApiReference.xml
    ${DB_DIR}/Build.xml
    ${DB_DIR}/Integrating.xml
    ${DB_DIR}/LanguageReference.xml
    ${DB_DIR}/Linking.xml
    ${DB_DIR}/Parsing.xml
    ${DB_DIR}/Tutorial.xml
)

set(REFENTRY_FILES
    ${DB_DIR}/ApiReference.SilikoEngine.xml
    ${DB_DIR}/ApiReference.SilikoEngineCallFunction.xml
    ${DB_DIR}/ApiReference.SilikoEngineCreate.xml
    ${DB_DIR}/ApiReference.SilikoEngineDestroy.xml
    ${DB_DIR}/ApiReference.SilikoEngineFetchFunction.xml
    ${DB_DIR}/ApiReference.SilikoEngineInstallFunction.xml
    ${DB_DIR}/ApiReference.SilikoError.xml
    ${DB_DIR}/ApiReference.SilikoEvaluate.xml
    ${DB_DIR}/ApiReference.SilikoFunction.xml
    ${DB_DIR}/ApiReference.SilikoFunctionCall.xml
    ${DB_DIR}/ApiReference.SilikoFunctionCreate.xml
    ${DB_DIR}/ApiReference.SilikoFunctionDestroy.xml
    ${DB_DIR}/ApiReference.SilikoFunctionVTable.xml
    ${DB_DIR}/ApiReference.SilikoInput.xml
    ${DB_DIR}/ApiReference.SilikoInputAdvance.xml
    ${DB_DIR}/ApiReference.SilikoInputCreate.xml
    ${DB_DIR}/ApiReference.SilikoInputDestroy.xml
    ${DB_DIR}/ApiReference.SilikoInputGetCharacter.xml
    ${DB_DIR}/ApiReference.SilikoInputVTable.xml
    ${DB_DIR}/ApiReference.SilikoInstallMathFunctions.xml
    ${DB_DIR}/ApiReference.SilikoInstallOperations.xml
    ${DB_DIR}/ApiReference.SilikoLexer.xml
    ${DB_DIR}/ApiReference.SilikoLexerAdvance.xml
    ${DB_DIR}/ApiReference.SilikoLexerCreate.xml
    ${DB_DIR}/ApiReference.SilikoLexerDestroy.xml
    ${DB_DIR}/ApiReference.SilikoLexerGetToken.xml
    ${DB_DIR}/ApiReference.SilikoMathAbs.xml
    ${DB_DIR}/ApiReference.SilikoMathAcos.xml
    ${DB_DIR}/ApiReference.SilikoMathAsin.xml
    ${DB_DIR}/ApiReference.SilikoMathAtan.xml
    ${DB_DIR}/ApiReference.SilikoMathCbrt.xml
    ${DB_DIR}/ApiReference.SilikoMathCeil.xml
    ${DB_DIR}/ApiReference.SilikoMathCos.xml
    ${DB_DIR}/ApiReference.SilikoMathCosh.xml
    ${DB_DIR}/ApiReference.SilikoMathExp.xml
    ${DB_DIR}/ApiReference.SilikoMathFloor.xml
    ${DB_DIR}/ApiReference.SilikoMathHypot.xml
    ${DB_DIR}/ApiReference.SilikoMathLog.xml
    ${DB_DIR}/ApiReference.SilikoMathLog10.xml
    ${DB_DIR}/ApiReference.SilikoMathLog2.xml
    ${DB_DIR}/ApiReference.SilikoMathRound.xml
    ${DB_DIR}/ApiReference.SilikoMathSin.xml
    ${DB_DIR}/ApiReference.SilikoMathSinh.xml
    ${DB_DIR}/ApiReference.SilikoMathSqrt.xml
    ${DB_DIR}/ApiReference.SilikoMathTan.xml
    ${DB_DIR}/ApiReference.SilikoMathTanh.xml
    ${DB_DIR}/ApiReference.SilikoMathTrunc.xml
    ${DB_DIR}/ApiReference.SilikoNode.xml
    ${DB_DIR}/ApiReference.SilikoNodeAssign.xml
    ${DB_DIR}/ApiReference.SilikoNodeAssignBranch.xml
    ${DB_DIR}/ApiReference.SilikoNodeAssignFromError.xml
    ${DB_DIR}/ApiReference.SilikoNodeAssignFromInteger.xml
    ${DB_DIR}/ApiReference.SilikoNodeAssignFromReal.xml
    ${DB_DIR}/ApiReference.SilikoNodeAssignFromValue.xml
    ${DB_DIR}/ApiReference.SilikoNodeCopy.xml
    ${DB_DIR}/ApiReference.SilikoNodeCountChildren.xml
    ${DB_DIR}/ApiReference.SilikoNodeCreateBranch.xml
    ${DB_DIR}/ApiReference.SilikoNodeCreateFromError.xml
    ${DB_DIR}/ApiReference.SilikoNodeCreateFromInteger.xml
    ${DB_DIR}/ApiReference.SilikoNodeCreateFromReal.xml
    ${DB_DIR}/ApiReference.SilikoNodeCreateFromValue.xml
    ${DB_DIR}/ApiReference.SilikoNodeCreateNothing.xml
    ${DB_DIR}/ApiReference.SilikoNodeDestroy.xml
    ${DB_DIR}/ApiReference.SilikoNodeFetchChild.xml
    ${DB_DIR}/ApiReference.SilikoNodeGetId.xml
    ${DB_DIR}/ApiReference.SilikoNodeGetStatus.xml
    ${DB_DIR}/ApiReference.SilikoNodeGetValue.xml
    ${DB_DIR}/ApiReference.SilikoNodeInsert.xml
    ${DB_DIR}/ApiReference.SilikoNodeInsertCopy.xml
    ${DB_DIR}/ApiReference.SilikoNodeIsNegated.xml
    ${DB_DIR}/ApiReference.SilikoNodeNegate.xml
    ${DB_DIR}/ApiReference.SilikoNodePruneChild.xml
    ${DB_DIR}/ApiReference.SilikoNodePushCopyLeft.xml
    ${DB_DIR}/ApiReference.SilikoNodePushCopyRight.xml
    ${DB_DIR}/ApiReference.SilikoNodePushLeft.xml
    ${DB_DIR}/ApiReference.SilikoNodePushRight.xml
    ${DB_DIR}/ApiReference.SilikoNodeStatus.xml
    ${DB_DIR}/ApiReference.SilikoOperationAdd.xml
    ${DB_DIR}/ApiReference.SilikoOperationDiceCreate.xml
    ${DB_DIR}/ApiReference.SilikoOperationDivide.xml
    ${DB_DIR}/ApiReference.SilikoOperationMultiply.xml
    ${DB_DIR}/ApiReference.SilikoOperationPower.xml
    ${DB_DIR}/ApiReference.SilikoOperationSubtract.xml
    ${DB_DIR}/ApiReference.SilikoParseInfix.xml
    ${DB_DIR}/ApiReference.SilikoPureFunctionCreate.xml
    ${DB_DIR}/ApiReference.SilikoStringInputCreate.xml
    ${DB_DIR}/ApiReference.SilikoToken.xml
    ${DB_DIR}/ApiReference.SilikoTokenAssign.xml
    ${DB_DIR}/ApiReference.SilikoTokenAssignEndOfInput.xml
    ${DB_DIR}/ApiReference.SilikoTokenAssignFromCharacter.xml
    ${DB_DIR}/ApiReference.SilikoTokenAssignFromId.xml
    ${DB_DIR}/ApiReference.SilikoTokenAssignFromInteger.xml
    ${DB_DIR}/ApiReference.SilikoTokenAssignFromReal.xml
    ${DB_DIR}/ApiReference.SilikoTokenCopy.xml
    ${DB_DIR}/ApiReference.SilikoTokenCreate.xml
    ${DB_DIR}/ApiReference.SilikoTokenCreateEndOfInput.xml
    ${DB_DIR}/ApiReference.SilikoTokenCreateFromCharacter.xml
    ${DB_DIR}/ApiReference.SilikoTokenCreateFromId.xml
    ${DB_DIR}/ApiReference.SilikoTokenCreateFromInteger.xml
    ${DB_DIR}/ApiReference.SilikoTokenCreateFromReal.xml
    ${DB_DIR}/ApiReference.SilikoTokenDestroy.xml
    ${DB_DIR}/ApiReference.SilikoTokenGetCharacter.xml
    ${DB_DIR}/ApiReference.SilikoTokenGetId.xml
    ${DB_DIR}/ApiReference.SilikoTokenGetInteger.xml
    ${DB_DIR}/ApiReference.SilikoTokenGetReal.xml
    ${DB_DIR}/ApiReference.SilikoTokenGetStatus.xml
    ${DB_DIR}/ApiReference.SilikoTokenStatus.xml
    ${DB_DIR}/ApiReference.SilikoValue.xml
    ${DB_DIR}/ApiReference.SilikoValueAssign.xml
    ${DB_DIR}/ApiReference.SilikoValueAssignFromError.xml
    ${DB_DIR}/ApiReference.SilikoValueAssignFromInteger.xml
    ${DB_DIR}/ApiReference.SilikoValueAssignFromReal.xml
    ${DB_DIR}/ApiReference.SilikoValueCopy.xml
    ${DB_DIR}/ApiReference.SilikoValueCreate.xml
    ${DB_DIR}/ApiReference.SilikoValueCreateFromError.xml
    ${DB_DIR}/ApiReference.SilikoValueCreateFromInteger.xml
    ${DB_DIR}/ApiReference.SilikoValueCreateFromReal.xml
    ${DB_DIR}/ApiReference.SilikoValueDestroy.xml
    ${DB_DIR}/ApiReference.SilikoValueGetError.xml
    ${DB_DIR}/ApiReference.SilikoValueGetInteger.xml
    ${DB_DIR}/ApiReference.SilikoValueGetReal.xml
    ${DB_DIR}/ApiReference.SilikoValueGetStatus.xml
    ${DB_DIR}/ApiReference.SilikoValueNegate.xml
    ${DB_DIR}/ApiReference.SilikoValueStatus.xml
)

set(LanguageReference_DEPS
    ${SVG_DIR}/argument-list.svg
    ${SVG_DIR}/atom.svg
    ${SVG_DIR}/exponent.svg
    ${SVG_DIR}/expression.svg
    ${SVG_DIR}/function-call.svg
    ${SVG_DIR}/id.svg
    ${SVG_DIR}/integer.svg
    ${SVG_DIR}/line.svg
    ${SVG_DIR}/number.svg
    ${SVG_DIR}/real.svg
    ${SVG_DIR}/roll.svg
    ${SVG_DIR}/space.svg
    ${SVG_DIR}/term.svg
)

set(ApiReference_DEPS
    ${REFENTRY_FILES}
)

set(SilikoCoreManual_DEPS
    ${ARTICLE_FILES}
    ${ApiReference_DEPS}
    ${LanguageReference_DEPS}
)

find_program(SAXON   saxon)
find_program(SAXON6  saxon6)
find_program(FOP     fop)
find_program(PANDOC  pandoc)

execute_process(
    COMMAND cmake -E make_directory
        ${FO_DIR}
        ${PDF_DIR}
        ${MD_DIR}
        ${MAN_DIR}
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)

set(FO_FILES)

set(BOOK_PDF_FILES)
foreach(XML_FILE ${BOOK_FILES})
    get_filename_component(BASENAME ${XML_FILE} NAME_WLE)
    set(FO_FILE "${FO_DIR}/${BASENAME}.fo")
    list(APPEND FO_FILES ${FO_FILE})
    list(APPEND BOOK_PDF_FILES "${PDF_DIR}/${BASENAME}.pdf")

    add_custom_command(
        OUTPUT ${FO_FILE}
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${DB_DIR}
        COMMAND ${SAXON} -xi
            -o:${CMAKE_CURRENT_BINARY_DIR}/${FO_FILE}
            -s:${CMAKE_CURRENT_SOURCE_DIR}/${XML_FILE}
            -xsl:${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/fo.book.xsl
        DEPENDS
            ${XML_FILE}
            ${${BASENAME}_DEPS}
            ${XSL_DIR}/fo.book.xsl
            ${XSL_DIR}/fo.common.xsl
    )
endforeach()

set(ARTICLE_PDF_FILES)
set(ARTICLE_MD_FILES)
foreach(XML_FILE ${ARTICLE_FILES})
    get_filename_component(BASENAME ${XML_FILE} NAME_WLE)

    set(FO_FILE "${FO_DIR}/${BASENAME}.fo")
    list(APPEND FO_FILES ${FO_FILE})
    list(APPEND ARTICLE_PDF_FILES "${PDF_DIR}/${BASENAME}.pdf")
    add_custom_command(
        OUTPUT ${FO_FILE}
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${DB_DIR}
        COMMAND ${SAXON} -xi
            -o:${CMAKE_CURRENT_BINARY_DIR}/${FO_FILE}
            -s:${CMAKE_CURRENT_SOURCE_DIR}/${XML_FILE}
            -xsl:${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/fo.article.xsl
        DEPENDS
            ${XML_FILE}
            ${${BASENAME}_DEPS}
            ${XSL_DIR}/fo.article.xsl
            ${XSL_DIR}/fo.common.xsl
    )

    set(MD_FILE "${MD_DIR}/${BASENAME}.md")
    list(APPEND ARTICLE_MD_FILES ${MD_FILE})
    add_custom_command(
        OUTPUT ${MD_FILE}
        COMMAND ${PANDOC}
            -f docbook
            -t gfm
            --standalone
            -o ${CMAKE_CURRENT_BINARY_DIR}/${MD_FILE}
            ${CMAKE_CURRENT_SOURCE_DIR}/${XML_FILE}
        DEPENDS
            ${XML_FILE}
            ${${BASENAME}_DEPS}
    )
endforeach()

set(REFENTRY_PDF_FILES)
set(REFENTRY_MAN_FILES)
foreach(XML_FILE ${REFENTRY_FILES})
    get_filename_component(BASENAME ${XML_FILE} NAME_WLE)
    get_filename_component(REFNAME ${BASENAME} EXT)
    string(REGEX REPLACE "^\\." "" REFNAME ${REFNAME})
    message("REFNAME:" ${REFNAME})

    set(FO_FILE "${FO_DIR}/${BASENAME}.fo")
    list(APPEND FO_FILES "${FO_FILE}")
    set(PDF_FILE "${PDF_DIR}/${BASENAME}.pdf")
    list(APPEND REFENTRY_PDF_FILES "${PDF_FILE}")
    add_custom_command(
        OUTPUT ${FO_FILE}
        COMMAND ${SAXON}
            -o:${CMAKE_CURRENT_BINARY_DIR}/${FO_FILE}
            -s:${CMAKE_CURRENT_SOURCE_DIR}/${XML_FILE}
            -xsl:${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/fo.refentry.xsl
        DEPENDS
            ${XML_FILE}
            ${${BASENAME}_DEPS}
            ${XSL_DIR}/fo.refentry.xsl
            ${XSL_DIR}/fo.common.xsl
    )

    set(MAN_FILE "${MAN_DIR}/${REFNAME}.1")
    list(APPEND REFENTRY_MAN_FILES "${MAN_FILE}")
    add_custom_command(
        OUTPUT "${MAN_FILE}"
        COMMAND ${SAXON6}
            ${CMAKE_CURRENT_SOURCE_DIR}/${XML_FILE}
            ${CMAKE_CURRENT_SOURCE_DIR}/${XSL_DIR}/man.refentry.xsl
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${MAN_DIR}
        DEPENDS
            ${XML_FILE}
            ${${BASENAME}_DEPS}
            ${XSL_DIR}/man.refentry.xsl
            ${XSL_DIR}/man.common.xsl
    )
endforeach()

foreach(FO_FILE ${FO_FILES})
    get_filename_component(BASENAME ${FO_FILE} NAME_WLE)

    set(PDF_FILE "${PDF_DIR}/${BASENAME}.pdf")
    add_custom_command(
        OUTPUT ${PDF_FILE}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${FO_DIR}
        COMMAND ${FOP}
            -c ${FOP_CONFIG_FILE}
            ${CMAKE_CURRENT_BINARY_DIR}/${FO_FILE}
            ${CMAKE_CURRENT_BINARY_DIR}/${PDF_FILE}
        DEPENDS
            ${FO_FILE}
    )
endforeach()

add_custom_target(BookPdf     DEPENDS ${BOOK_PDF_FILES})
add_custom_target(ArticlePdf  DEPENDS ${ARTICLE_PDF_FILES})
add_custom_target(ArticleMd   DEPENDS ${ARTICLE_MD_FILES})
add_custom_target(RefentryPdf DEPENDS ${REFENTRY_PDF_FILES})
add_custom_target(RefentryMan DEPENDS ${REFENTRY_MAN_FILES})

add_custom_target(Documentation ALL
    DEPENDS
        ${BOOK_PDF_FILES}
        ${ARTICLE_PDF_FILES}
        ${ARTICLE_MD_FILES}
        ${REFENTRY_PDF_FILES}
        ${REFENTRY_MAN_FILES}
)

