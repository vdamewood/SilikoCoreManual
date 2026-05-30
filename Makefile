FOPCONF   := ~/.config/fop/fop.conf
RNGFILE   := ~/.local/share/xml/docbook/schema/5.1/schemas/rng/docbook.rng
RNGXIFILE := ~/.local/share/xml/docbook/schema/5.1/schemas/rng/docbookxi.rng
MDINSTDIR := ~/tmp/SilikoDocs/

MONODBFILES := \
	docbook/Build.xml \
	docbook/Integrating.xml \
	docbook/LanguageReference.xml \
	docbook/Linking.xml \
	docbook/Parsing.xml \
	docbook/Tutorial.xml

XIDBFILES := docbook/ApiReference.xml

APIREFFILES := \
	docbook/ApiReference.SilikoEngine.xml \
	docbook/ApiReference.SilikoEngineCallFunction.xml \
	docbook/ApiReference.SilikoEngineCreate.xml \
	docbook/ApiReference.SilikoEngineDestroy.xml \
	docbook/ApiReference.SilikoEngineFetchFunction.xml \
	docbook/ApiReference.SilikoEngineInstallFunction.xml \
	docbook/ApiReference.SilikoError.xml \
	docbook/ApiReference.SilikoEvaluate.xml \
	docbook/ApiReference.SilikoFunction.xml \
	docbook/ApiReference.SilikoFunctionCall.xml \
	docbook/ApiReference.SilikoFunctionCreate.xml \
	docbook/ApiReference.SilikoFunctionDestroy.xml \
	docbook/ApiReference.SilikoFunctionVTable.xml \
	docbook/ApiReference.SilikoInput.xml \
	docbook/ApiReference.SilikoInputAdvance.xml \
	docbook/ApiReference.SilikoInputCreate.xml \
	docbook/ApiReference.SilikoInputDestroy.xml \
	docbook/ApiReference.SilikoInputGetCharacter.xml \
	docbook/ApiReference.SilikoInputVTable.xml \
	docbook/ApiReference.SilikoInstallMathFunctions.xml \
	docbook/ApiReference.SilikoInstallOperations.xml \
	docbook/ApiReference.SilikoLexer.xml \
	docbook/ApiReference.SilikoLexerAdvance.xml \
	docbook/ApiReference.SilikoLexerCreate.xml \
	docbook/ApiReference.SilikoLexerDestroy.xml \
	docbook/ApiReference.SilikoLexerGetToken.xml \
	docbook/ApiReference.SilikoMathAbs.xml \
	docbook/ApiReference.SilikoMathAcos.xml \
	docbook/ApiReference.SilikoMathAsin.xml \
	docbook/ApiReference.SilikoMathAtan.xml \
	docbook/ApiReference.SilikoMathCbrt.xml \
	docbook/ApiReference.SilikoMathCeil.xml \
	docbook/ApiReference.SilikoMathCos.xml \
	docbook/ApiReference.SilikoMathCosh.xml \
	docbook/ApiReference.SilikoMathExp.xml \
	docbook/ApiReference.SilikoMathFloor.xml \
	docbook/ApiReference.SilikoMathHypot.xml \
	docbook/ApiReference.SilikoMathLog.xml \
	docbook/ApiReference.SilikoMathLog10.xml \
	docbook/ApiReference.SilikoMathLog2.xml \
	docbook/ApiReference.SilikoMathRound.xml \
	docbook/ApiReference.SilikoMathSin.xml \
	docbook/ApiReference.SilikoMathSinh.xml \
	docbook/ApiReference.SilikoMathSqrt.xml \
	docbook/ApiReference.SilikoMathTan.xml \
	docbook/ApiReference.SilikoMathTanh.xml \
	docbook/ApiReference.SilikoMathTrunc.xml \
	docbook/ApiReference.SilikoNode.xml \
	docbook/ApiReference.SilikoNodeAssign.xml \
	docbook/ApiReference.SilikoNodeAssignBranch.xml \
	docbook/ApiReference.SilikoNodeAssignFromError.xml \
	docbook/ApiReference.SilikoNodeAssignFromInteger.xml \
	docbook/ApiReference.SilikoNodeAssignFromReal.xml \
	docbook/ApiReference.SilikoNodeAssignFromValue.xml \
	docbook/ApiReference.SilikoNodeCopy.xml \
	docbook/ApiReference.SilikoNodeCountChildren.xml \
	docbook/ApiReference.SilikoNodeCreateBranch.xml \
	docbook/ApiReference.SilikoNodeCreateFromError.xml \
	docbook/ApiReference.SilikoNodeCreateFromInteger.xml \
	docbook/ApiReference.SilikoNodeCreateFromReal.xml \
	docbook/ApiReference.SilikoNodeCreateFromValue.xml \
	docbook/ApiReference.SilikoNodeCreateNothing.xml \
	docbook/ApiReference.SilikoNodeDestroy.xml \
	docbook/ApiReference.SilikoNodeFetchChild.xml \
	docbook/ApiReference.SilikoNodeGetId.xml \
	docbook/ApiReference.SilikoNodeGetStatus.xml \
	docbook/ApiReference.SilikoNodeGetValue.xml \
	docbook/ApiReference.SilikoNodeInsert.xml \
	docbook/ApiReference.SilikoNodeInsertCopy.xml \
	docbook/ApiReference.SilikoNodeIsNegated.xml \
	docbook/ApiReference.SilikoNodeNegate.xml \
	docbook/ApiReference.SilikoNodePruneChild.xml \
	docbook/ApiReference.SilikoNodePushCopyLeft.xml \
	docbook/ApiReference.SilikoNodePushCopyRight.xml \
	docbook/ApiReference.SilikoNodePushLeft.xml \
	docbook/ApiReference.SilikoNodePushRight.xml \
	docbook/ApiReference.SilikoNodeStatus.xml \
	docbook/ApiReference.SilikoOperationAdd.xml \
	docbook/ApiReference.SilikoOperationDiceCreate.xml \
	docbook/ApiReference.SilikoOperationDivide.xml \
	docbook/ApiReference.SilikoOperationMultiply.xml \
	docbook/ApiReference.SilikoOperationPower.xml \
	docbook/ApiReference.SilikoOperationSubtract.xml \
	docbook/ApiReference.SilikoParseInfix.xml \
	docbook/ApiReference.SilikoPureFunctionCreate.xml \
	docbook/ApiReference.SilikoStringInputCreate.xml \
	docbook/ApiReference.SilikoToken.xml \
	docbook/ApiReference.SilikoTokenAssign.xml \
	docbook/ApiReference.SilikoTokenAssignEndOfInput.xml \
	docbook/ApiReference.SilikoTokenAssignFromCharacter.xml \
	docbook/ApiReference.SilikoTokenAssignFromId.xml \
	docbook/ApiReference.SilikoTokenAssignFromInteger.xml \
	docbook/ApiReference.SilikoTokenAssignFromReal.xml \
	docbook/ApiReference.SilikoTokenCopy.xml \
	docbook/ApiReference.SilikoTokenCreate.xml \
	docbook/ApiReference.SilikoTokenCreateEndOfInput.xml \
	docbook/ApiReference.SilikoTokenCreateFromCharacter.xml \
	docbook/ApiReference.SilikoTokenCreateFromId.xml \
	docbook/ApiReference.SilikoTokenCreateFromInteger.xml \
	docbook/ApiReference.SilikoTokenCreateFromReal.xml \
	docbook/ApiReference.SilikoTokenDestroy.xml \
	docbook/ApiReference.SilikoTokenGetCharacter.xml \
	docbook/ApiReference.SilikoTokenGetId.xml \
	docbook/ApiReference.SilikoTokenGetInteger.xml \
	docbook/ApiReference.SilikoTokenGetReal.xml \
	docbook/ApiReference.SilikoTokenGetStatus.xml \
	docbook/ApiReference.SilikoTokenStatus.xml \
	docbook/ApiReference.SilikoValue.xml \
	docbook/ApiReference.SilikoValueAssign.xml \
	docbook/ApiReference.SilikoValueAssignFromError.xml \
	docbook/ApiReference.SilikoValueAssignFromInteger.xml \
	docbook/ApiReference.SilikoValueAssignFromReal.xml \
	docbook/ApiReference.SilikoValueCopy.xml \
	docbook/ApiReference.SilikoValueCreate.xml \
	docbook/ApiReference.SilikoValueCreateFromError.xml \
	docbook/ApiReference.SilikoValueCreateFromInteger.xml \
	docbook/ApiReference.SilikoValueCreateFromReal.xml \
	docbook/ApiReference.SilikoValueDestroy.xml \
	docbook/ApiReference.SilikoValueGetError.xml \
	docbook/ApiReference.SilikoValueGetInteger.xml \
	docbook/ApiReference.SilikoValueGetReal.xml \
	docbook/ApiReference.SilikoValueGetStatus.xml \
	docbook/ApiReference.SilikoValueNegate.xml \
	docbook/ApiReference.SilikoValueStatus.xml

DBFILES   := $(MONODBFILES) $(XIDBFILES)
PDFFILES  := $(subst docbook/,pdf/,$(DBFILES:.xml=.pdf))
FOFILES   := $(subst docbook/,fo/,$(DBFILES:.xml=.fo))
MDFILES   := $(subst docbook/,md/,$(DBFILES:.xml=.md))

all: all-article-pdf all-article-md book

all-article-pdf: $(PDFFILES)

all-article-md: $(MDFILES)

install: all-article-md
	cp $(MDFILES) $(MDINSTDIR)

book: pdf/SilikoCoreManual.pdf

pdf/%.pdf: fo/%.fo
	fop -c $(FOPCONF) $< $@

fo/SilikoCoreManual.fo: docbook/SilikoCoreManual.xml $(DBFILES) $(APIREFFILES) xsl/fo.book.xsl xsl/fo.common.xsl
	saxon -xi -o:$@ -s:$< -xsl:xsl/fo.book.xsl

fo/ApiReference.fo: docbook/ApiReference.xml $(APIREFFILES) xsl/fo.article.xsl xsl/fo.common.xsl
	saxon -xi -o:$@ -s:$< -xsl:xsl/fo.article.xsl

fo/%.fo: docbook/%.xml xsl/fo.article.xsl xsl/fo.common.xsl
	saxon -o:$@ -s:$< -xsl:xsl/fo.article.xsl

md/%.md: docbook/%.xml
	pandoc -f docbook -t gfm --standalone -o $@ $<

validate:
	for FILE in $(MONODBFILES) $(APIREFFILES); do jing $(RNGFILE) $$FILE; done
	for FILE in $(XIDBFILES) docbook/SilikoCoreManual.xml; do jing $(RNGXIFILE) $$FILE; done

clean:
	rm -f $(FOFILES) fo/SilikoCoreManual.fo

distclean: clean
	rm -f $(PDFFILES) pdf/SilikoCoreManual.pdf $(MDFILES)

.PHONY: all all-article-pdf all-article-md book clean distclean validate

.NOTINTERMEDIATE:
