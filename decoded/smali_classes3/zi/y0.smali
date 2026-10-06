.class Lzi/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/NotificationChannel;

.field final synthetic d:Lzi/w0;


# direct methods
.method constructor <init>(Lzi/w0;Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)V
    .locals 0

    iput-object p1, p0, Lzi/y0;->d:Lzi/w0;

    iput-object p2, p0, Lzi/y0;->a:Landroid/content/Context;

    iput-object p3, p0, Lzi/y0;->b:Ljava/lang/String;

    iput-object p4, p0, Lzi/y0;->c:Landroid/app/NotificationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lzi/y0;->a:Landroid/content/Context;

    iget-object v1, p0, Lzi/y0;->b:Ljava/lang/String;

    iget-object v2, p0, Lzi/y0;->c:Landroid/app/NotificationChannel;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/g2;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lzi/y0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
