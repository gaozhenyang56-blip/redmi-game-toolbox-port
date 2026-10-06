.class public Lwe/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/accountsdk/account/data/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/a;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/a;

    move-result-object p1

    iput-object p1, p0, Lwe/e$c;->a:Lcom/xiaomi/accountsdk/account/data/a;

    iput-object p2, p0, Lwe/e$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwe/e$c;->a:Lcom/xiaomi/accountsdk/account/data/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/a;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwe/e$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/xiaomi/accountsdk/account/data/a;
    .locals 1

    iget-object v0, p0, Lwe/e$c;->a:Lcom/xiaomi/accountsdk/account/data/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lwe/e$c;

    iget-object v2, p0, Lwe/e$c;->a:Lcom/xiaomi/accountsdk/account/data/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/xiaomi/accountsdk/account/data/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lwe/e$c;->a:Lcom/xiaomi/accountsdk/account/data/a;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lwe/e$c;->b:Ljava/lang/String;

    iget-object p1, p1, Lwe/e$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lwe/e$c;->a:Lcom/xiaomi/accountsdk/account/data/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/a;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lwe/e$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
