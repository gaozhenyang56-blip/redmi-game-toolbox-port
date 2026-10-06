.class public Lcom/miui/antispam/policy/BlackListPolicy;
.super Lcom/miui/antispam/policy/BaseBlackListPolicy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/BaseBlackListPolicy;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    return-void
.end method


# virtual methods
.method protected getCallBlockType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BlackListPolicy"

    return-object v0
.end method

.method protected getSmsBlockType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getType()I
    .locals 1

    sget v0, Lb2/a$c;->a:I

    return v0
.end method

.method isInCache(Ljava/lang/String;II)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mJudge:Lh2/b;

    invoke-virtual {p0}, Lcom/miui/antispam/policy/BlackListPolicy;->getType()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lh2/b;->t(Ljava/lang/String;III)Z

    move-result p1

    return p1
.end method

.method isInDB(Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
