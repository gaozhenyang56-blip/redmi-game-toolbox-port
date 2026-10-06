.class public Lcom/xiaomi/micloudsdk/stat/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/stat/b$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/xiaomi/micloudsdk/stat/a;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/b;->a:Z

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/b;-><init>()V

    return-void
.end method

.method public static c()Lcom/xiaomi/micloudsdk/stat/b;
    .locals 1

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/b$b;->a()Lcom/xiaomi/micloudsdk/stat/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/b;->b:Lcom/xiaomi/micloudsdk/stat/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/a;->b(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/b;->b:Lcom/xiaomi/micloudsdk/stat/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/a;->a(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    :cond_0
    return-void
.end method
