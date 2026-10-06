.class Lcom/miui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$Tokenizer$Token;,
        Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-direct {v0}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$Tokenizer;->reset()V

    return-void
.end method


# virtual methods
.method public getToken()Lcom/miui/maml/data/Expression$Tokenizer$Token;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v2, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const-string v10, "Expression"

    if-ge v3, v2, :cond_1f

    iget-object v12, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x28

    const/4 v15, 0x1

    if-nez v7, :cond_5

    const/16 v11, 0x23

    const/16 v5, 0x40

    const/16 v13, 0x24

    if-eq v12, v11, :cond_11

    if-eq v12, v5, :cond_11

    if-ne v12, v13, :cond_0

    goto/16 :goto_c

    :cond_0
    const/16 v5, 0x27

    if-ne v12, v5, :cond_4

    add-int/2addr v3, v15

    move v1, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v6, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v4, :cond_1

    if-ne v6, v5, :cond_1

    goto :goto_3

    :cond_1
    const/16 v4, 0x5c

    if-ne v6, v4, :cond_2

    move v4, v15

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\\'"

    const-string v5, "\'"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_4
    if-ne v12, v14, :cond_6

    move v7, v15

    :cond_5
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_12

    :cond_6
    const/16 v11, 0x5b

    if-ne v12, v11, :cond_7

    const/4 v7, 0x2

    goto :goto_4

    :cond_7
    invoke-static {v12}, Lcom/miui/maml/data/Expression;->access$300(C)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v1, v3, 0x1

    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_8

    if-ge v1, v2, :cond_8

    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    if-ge v1, v2, :cond_a

    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/miui/maml/data/Expression;->access$400(C)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    iput v1, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_b
    invoke-static {v12}, Lcom/miui/maml/data/Expression;->access$500(C)Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v1, v3, 0x1

    :goto_8
    if-ge v1, v2, :cond_d

    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/miui/maml/data/Expression;->access$600(C)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    iput v1, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_e
    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v5, v12, v15}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v5, v3, 0x1

    :goto_a
    if-ge v5, v2, :cond_10

    iget-object v10, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    iget-object v13, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v11, 0x0

    invoke-virtual {v10, v13, v11}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v10

    if-nez v10, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v5, v5, 0x1

    const/16 v11, 0x5b

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    :goto_b
    iget-object v10, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v10}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lcom/miui/maml/data/Expression$Ope;

    move-result-object v10

    sget-object v13, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    if-eq v10, v13, :cond_19

    iput v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v2, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v10}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lcom/miui/maml/data/Expression$Ope;)V

    return-object v1

    :cond_11
    :goto_c
    add-int/lit8 v1, v3, 0x1

    if-ge v1, v2, :cond_12

    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_12

    const/4 v1, 0x2

    goto :goto_d

    :cond_12
    move v1, v15

    :goto_d
    add-int/2addr v3, v1

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_14

    iget-object v6, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/miui/maml/data/Expression;->access$200(C)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_f

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_14
    :goto_f
    if-ne v4, v3, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid variable name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_15
    iput v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    sget-object v2, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v12, v5, :cond_16

    sget-object v2, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_11

    :cond_16
    if-ne v12, v13, :cond_18

    if-ne v1, v15, :cond_17

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_JSON_OBJ:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_10

    :cond_17
    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_JSON_ARR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    :goto_10
    move-object v2, v1

    :cond_18
    :goto_11
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v1

    :cond_19
    :goto_12
    if-eqz v7, :cond_1e

    if-nez v6, :cond_1c

    if-eq v7, v15, :cond_1b

    const/4 v4, 0x2

    if-eq v7, v4, :cond_1a

    goto :goto_13

    :cond_1a
    const/16 v1, 0x5d

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    move v9, v1

    move-object v1, v4

    const/16 v8, 0x5b

    goto :goto_13

    :cond_1b
    const/16 v1, 0x29

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    move v9, v1

    move-object v1, v4

    move v8, v14

    :goto_13
    add-int/lit8 v4, v3, 0x1

    :cond_1c
    if-ne v12, v8, :cond_1d

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1d
    if-ne v12, v9, :cond_1e

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_1e

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_1e
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1f
    if-eqz v6, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mismatched bracket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    return-void
.end method
