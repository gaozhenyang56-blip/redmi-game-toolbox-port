.class public abstract Lcom/miui/antispam/policy/BaseListPolicy;
.super Lcom/miui/antispam/policy/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/a;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    return-void
.end method


# virtual methods
.method abstract cacheQuery(Lh2/c;)Z
.end method

.method public dbQuery(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 4

    iget v0, p1, Lh2/c;->f:I

    iget v1, p1, Lh2/c;->e:I

    invoke-virtual {p0}, Lcom/miui/antispam/policy/BaseListPolicy;->needCheckRawNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lh2/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/antispam/policy/BaseListPolicy;->isInDB(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/policy/BaseListPolicy;->getResult(I)Lcom/miui/antispam/policy/a$a;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/antispam/policy/BaseListPolicy;->isInDB(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lh2/c;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/antispam/policy/BaseListPolicy;->isInDB(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lh2/c;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/antispam/policy/BaseListPolicy;->isInDB(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/antispam/policy/BaseListPolicy;->getResult(I)Lcom/miui/antispam/policy/a$a;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/antispam/policy/BaseListPolicy;->getResult(I)Lcom/miui/antispam/policy/a$a;

    move-result-object p1

    return-object p1
.end method

.method abstract getResult(I)Lcom/miui/antispam/policy/a$a;
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mJudge:Lh2/b;

    invoke-virtual {v0}, Lh2/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/antispam/policy/BaseListPolicy;->dbQuery(Lh2/c;)Lcom/miui/antispam/policy/a$a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/antispam/policy/BaseListPolicy;->cacheQuery(Lh2/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lh2/c;->f:I

    invoke-virtual {p0, p1}, Lcom/miui/antispam/policy/BaseListPolicy;->getResult(I)Lcom/miui/antispam/policy/a$a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method abstract isInDB(Ljava/lang/String;II)Z
.end method

.method protected needCheckRawNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
