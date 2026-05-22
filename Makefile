FOPCONF := ${HOME}/.config/fop/fop.conf
RNGFILE     := ~/.local/share/xml/docbook/schema/5.1/schemas/rng/docbook.rng
RNGXIFILE   := ~/.local/share/xml/docbook/schema/5.1/schemas/rng/docbookxi.rng
MDINSTDIR   := ~/tmp/SilikoDocs/

MONODBFILES := \
	Build.xml \
	Integrating.xml \
	LanguageReference.xml \
	Linking.xml \
	Parsing.xml \
	Tutorial.xml

XIDBFILES := ApiReference.xml

DBFILES := $(MONODBFILES) $(XIDBFILES)

APIREFFILES := \
	ApiReference/SilikoEngine.xml \
	ApiReference/SilikoEngineCallFunction.xml \
	ApiReference/SilikoEngineCreate.xml \
	ApiReference/SilikoEngineDestroy.xml \
	ApiReference/SilikoEngineFetchFunction.xml \
	ApiReference/SilikoEngineInstallFunction.xml \
	ApiReference/SilikoError.xml \
	ApiReference/SilikoEvaluate.xml \
	ApiReference/SilikoFunction.xml \
	ApiReference/SilikoFunctionCall.xml \
	ApiReference/SilikoFunctionCreate.xml \
	ApiReference/SilikoFunctionDestroy.xml \
	ApiReference/SilikoFunctionVTable.xml \
	ApiReference/SilikoInput.xml \
	ApiReference/SilikoInputAdvance.xml \
	ApiReference/SilikoInputCreate.xml \
	ApiReference/SilikoInputDestroy.xml \
	ApiReference/SilikoInputGetCharacter.xml \
	ApiReference/SilikoInputVTable.xml \
	ApiReference/SilikoInstallMathFunctions.xml \
	ApiReference/SilikoInstallOperations.xml \
	ApiReference/SilikoLexer.xml \
	ApiReference/SilikoLexerAdvance.xml \
	ApiReference/SilikoLexerCreate.xml \
	ApiReference/SilikoLexerDestroy.xml \
	ApiReference/SilikoLexerGetToken.xml \
	ApiReference/SilikoMathAbs.xml \
	ApiReference/SilikoMathAcos.xml \
	ApiReference/SilikoMathAsin.xml \
	ApiReference/SilikoMathAtan.xml \
	ApiReference/SilikoMathCbrt.xml \
	ApiReference/SilikoMathCeil.xml \
	ApiReference/SilikoMathCos.xml \
	ApiReference/SilikoMathCosh.xml \
	ApiReference/SilikoMathExp.xml \
	ApiReference/SilikoMathFloor.xml \
	ApiReference/SilikoMathHypot.xml \
	ApiReference/SilikoMathLog.xml \
	ApiReference/SilikoMathLog10.xml \
	ApiReference/SilikoMathLog2.xml \
	ApiReference/SilikoMathRound.xml \
	ApiReference/SilikoMathSin.xml \
	ApiReference/SilikoMathSinh.xml \
	ApiReference/SilikoMathSqrt.xml \
	ApiReference/SilikoMathTan.xml \
	ApiReference/SilikoMathTanh.xml \
	ApiReference/SilikoMathTrunc.xml \
	ApiReference/SilikoNode.xml \
	ApiReference/SilikoNodeAssign.xml \
	ApiReference/SilikoNodeAssignBranch.xml \
	ApiReference/SilikoNodeAssignFromError.xml \
	ApiReference/SilikoNodeAssignFromInteger.xml \
	ApiReference/SilikoNodeAssignFromReal.xml \
	ApiReference/SilikoNodeAssignFromValue.xml \
	ApiReference/SilikoNodeCopy.xml \
	ApiReference/SilikoNodeCountChildren.xml \
	ApiReference/SilikoNodeCreateBranch.xml \
	ApiReference/SilikoNodeCreateFromError.xml \
	ApiReference/SilikoNodeCreateFromInteger.xml \
	ApiReference/SilikoNodeCreateFromReal.xml \
	ApiReference/SilikoNodeCreateFromValue.xml \
	ApiReference/SilikoNodeCreateNothing.xml \
	ApiReference/SilikoNodeDestroy.xml \
	ApiReference/SilikoNodeFetchChild.xml \
	ApiReference/SilikoNodeGetId.xml \
	ApiReference/SilikoNodeGetStatus.xml \
	ApiReference/SilikoNodeGetValue.xml \
	ApiReference/SilikoNodeInsert.xml \
	ApiReference/SilikoNodeInsertCopy.xml \
	ApiReference/SilikoNodeIsNegated.xml \
	ApiReference/SilikoNodeNegate.xml \
	ApiReference/SilikoNodePruneChild.xml \
	ApiReference/SilikoNodePushCopyLeft.xml \
	ApiReference/SilikoNodePushCopyRight.xml \
	ApiReference/SilikoNodePushLeft.xml \
	ApiReference/SilikoNodePushRight.xml \
	ApiReference/SilikoNodeStatus.xml \
	ApiReference/SilikoOperationAdd.xml \
	ApiReference/SilikoOperationDiceCreate.xml \
	ApiReference/SilikoOperationDivide.xml \
	ApiReference/SilikoOperationMultiply.xml \
	ApiReference/SilikoOperationPower.xml \
	ApiReference/SilikoOperationSubtract.xml \
	ApiReference/SilikoParseInfix.xml \
	ApiReference/SilikoPureFunctionCreate.xml \
	ApiReference/SilikoStringInputCreate.xml \
	ApiReference/SilikoToken.xml \
	ApiReference/SilikoTokenAssign.xml \
	ApiReference/SilikoTokenAssignEndOfInput.xml \
	ApiReference/SilikoTokenAssignFromCharacter.xml \
	ApiReference/SilikoTokenAssignFromId.xml \
	ApiReference/SilikoTokenAssignFromInteger.xml \
	ApiReference/SilikoTokenAssignFromReal.xml \
	ApiReference/SilikoTokenCopy.xml \
	ApiReference/SilikoTokenCreate.xml \
	ApiReference/SilikoTokenCreateEndOfInput.xml \
	ApiReference/SilikoTokenCreateFromCharacter.xml \
	ApiReference/SilikoTokenCreateFromId.xml \
	ApiReference/SilikoTokenCreateFromInteger.xml \
	ApiReference/SilikoTokenCreateFromReal.xml \
	ApiReference/SilikoTokenDestroy.xml \
	ApiReference/SilikoTokenGetCharacter.xml \
	ApiReference/SilikoTokenGetId.xml \
	ApiReference/SilikoTokenGetInteger.xml \
	ApiReference/SilikoTokenGetReal.xml \
	ApiReference/SilikoTokenGetStatus.xml \
	ApiReference/SilikoTokenStatus.xml \
	ApiReference/SilikoValue.xml \
	ApiReference/SilikoValueAssign.xml \
	ApiReference/SilikoValueAssignFromError.xml \
	ApiReference/SilikoValueAssignFromInteger.xml \
	ApiReference/SilikoValueAssignFromReal.xml \
	ApiReference/SilikoValueCopy.xml \
	ApiReference/SilikoValueCreate.xml \
	ApiReference/SilikoValueCreateFromError.xml \
	ApiReference/SilikoValueCreateFromInteger.xml \
	ApiReference/SilikoValueCreateFromReal.xml \
	ApiReference/SilikoValueDestroy.xml \
	ApiReference/SilikoValueGetError.xml \
	ApiReference/SilikoValueGetInteger.xml \
	ApiReference/SilikoValueGetNegate.xml \
	ApiReference/SilikoValueGetReal.xml \
	ApiReference/SilikoValueGetStatus.xml \
	ApiReference/SilikoValueStatus.xml

PDFFILES  := $(DBFILES:.xml=.pdf)
FOFILES   := $(DBFILES:.xml=.fo)
MDFILES   := $(DBFILES:.xml=.md)

all: all-article-pdf all-article-md book

all-article-pdf: $(PDFFILES)

all-article-md: $(MDFILES)

install: all-article-md
	cp $(MDFILES) $(MDINSTDIR)

book: SilikoCoreManual.pdf

%.pdf: %.fo
	fop -c $(FOPCONF) $< $@

SilikoCoreManual.fo: SilikoCoreManual.xml $(DBFILES) $(APIREFFILES) fo-book.xsl fo-common.xsl
	saxon -xi -o:$@ -s:$< -xsl:fo-book.xsl

ApiReference.fo: ApiReference.xml $(APIREFFILES) fo-article.xsl fo-common.xsl
	saxon -o:$@ -s:$< -xsl:fo-article.xsl

%.fo: %.xml fo-article.xsl fo-common.xsl
	saxon -o:$@ -s:$< -xsl:fo-article.xsl

%.md: %.xml
	pandoc -f docbook -t gfm --standalone -o $@ $<

validate:
	for FILE in $(MONODBFILES); do jing $(RNGFILE) $$FILE; done
	for FILE in $(APIREFFILES); do jing $(RNGFILE) $$FILE; done
	for FILE in $(XIDBFILES); do jing $(RNGXIFILE) $$FILE; done
	jing $(RNGXIFILE) SilikoCoreManual.xml

clean:
	rm -f $(FOFILES) SilikoCoreManual.fo

distclean: clean
	rm -f $(PDFFILES) SilikoCoreManual.pdf $(MDFILES)

.PHONY: all all-article-pdf all-article-md book clean distclean validate

.NOTINTERMEDIATE:
