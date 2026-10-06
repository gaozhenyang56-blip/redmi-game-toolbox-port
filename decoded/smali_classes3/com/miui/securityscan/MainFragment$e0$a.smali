.class Lcom/miui/securityscan/MainFragment$e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment$e0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/miui/securityscan/MainFragment$e0;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment$e0;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$e0$a;->c:Lcom/miui/securityscan/MainFragment$e0;

    iput-object p2, p0, Lcom/miui/securityscan/MainFragment$e0$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/miui/securityscan/MainFragment$e0$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$e0$a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$e0$a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$e0$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$e0$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Leg/o;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
