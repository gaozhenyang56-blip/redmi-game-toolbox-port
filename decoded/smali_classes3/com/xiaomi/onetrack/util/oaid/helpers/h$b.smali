.class public Lcom/xiaomi/onetrack/util/oaid/helpers/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/helpers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/util/oaid/helpers/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/h$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/h$a;

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/h$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/h;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaomi/onetrack/util/oaid/helpers/h$a;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/h;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/h$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/h;

    iget-object p1, p1, Lcom/xiaomi/onetrack/util/oaid/helpers/h;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 p2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, p2, p3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsaSDKHelper"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
