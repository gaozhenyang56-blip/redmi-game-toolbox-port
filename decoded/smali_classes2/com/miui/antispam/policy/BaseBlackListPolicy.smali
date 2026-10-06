.class abstract Lcom/miui/antispam/policy/BaseBlackListPolicy;
.super Lcom/miui/antispam/policy/BaseListPolicy;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/BaseListPolicy;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    return-void
.end method


# virtual methods
.method cacheQuery(Lh2/c;)Z
    .locals 5

    iget v0, p1, Lh2/c;->f:I

    iget v1, p1, Lh2/c;->e:I

    invoke-virtual {p0}, Lcom/miui/antispam/policy/BaseListPolicy;->needCheckRawNumber()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p1, Lh2/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/antispam/policy/BaseBlackListPolicy;->isInCache(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/antispam/policy/BaseBlackListPolicy;->isInCache(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lh2/c;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/antispam/policy/BaseBlackListPolicy;->isInCache(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lh2/c;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/antispam/policy/BaseBlackListPolicy;->isInCache(Ljava/lang/String;II)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v3
.end method

.method abstract getCallBlockType()I
.end method

.method getResult(I)Lcom/miui/antispam/policy/a$a;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-virtual {p0}, Lcom/miui/antispam/policy/BaseBlackListPolicy;->getCallBlockType()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-virtual {p0}, Lcom/miui/antispam/policy/BaseBlackListPolicy;->getSmsBlockType()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1
.end method

.method abstract getSmsBlockType()I
.end method

.method abstract isInCache(Ljava/lang/String;II)Z
.end method
