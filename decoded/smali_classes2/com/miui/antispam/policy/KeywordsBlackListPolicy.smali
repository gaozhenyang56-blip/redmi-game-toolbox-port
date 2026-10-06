.class public Lcom/miui/antispam/policy/KeywordsBlackListPolicy;
.super Lcom/miui/antispam/policy/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/a;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    return-void
.end method


# virtual methods
.method public dbQuery(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lh2/c;->g:Ljava/lang/String;

    iget p1, p1, Lh2/c;->e:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v2, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "KeywordsBlackListPolicy"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mJudge:Lh2/b;

    invoke-virtual {v0}, Lh2/b;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mJudge:Lh2/b;

    iget-object v1, p1, Lh2/c;->g:Ljava/lang/String;

    iget p1, p1, Lh2/c;->e:I

    invoke-virtual {v0, v1, p1}, Lh2/b;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antispam/policy/a$a;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZILjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/antispam/policy/KeywordsBlackListPolicy;->dbQuery(Lh2/c;)Lcom/miui/antispam/policy/a$a;

    move-result-object p1

    return-object p1
.end method
