.class public Lcom/miui/antispam/policy/WhiteListPolicy;
.super Lcom/miui/antispam/policy/BaseListPolicy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/BaseListPolicy;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    return-void
.end method


# virtual methods
.method cacheQuery(Lh2/c;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mJudge:Lh2/b;

    invoke-virtual {p0}, Lcom/miui/antispam/policy/WhiteListPolicy;->getType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lh2/b;->f(Lh2/c;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p1, Lh2/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/policy/a;->mJudge:Lh2/b;

    iget v2, p1, Lh2/c;->f:I

    invoke-virtual {p0}, Lcom/miui/antispam/policy/WhiteListPolicy;->getType()I

    move-result v3

    iget p1, p1, Lh2/c;->e:I

    invoke-virtual {v1, v0, v2, v3, p1}, Lh2/b;->e(Ljava/lang/String;III)Z

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "WhiteListPolicy"

    return-object v0
.end method

.method getResult(I)Lcom/miui/antispam/policy/a$a;
    .locals 2

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1
.end method

.method public getType()I
    .locals 1

    sget v0, Lb2/a$c;->b:I

    return v0
.end method

.method isInDB(Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lmiui/provider/ExtraTelephony;->isInWhiteList(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
