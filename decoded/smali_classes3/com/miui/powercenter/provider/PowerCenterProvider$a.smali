.class Lcom/miui/powercenter/provider/PowerCenterProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/provider/PowerCenterProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/powercenter/provider/PowerCenterProvider;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerCenterProvider;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerCenterProvider$a;->b:Lcom/miui/powercenter/provider/PowerCenterProvider;

    iput-object p2, p0, Lcom/miui/powercenter/provider/PowerCenterProvider$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lme/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerCenterProvider$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerCenterProvider$a;->b:Lcom/miui/powercenter/provider/PowerCenterProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/f;->n(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerCenterProvider$a;->b:Lcom/miui/powercenter/provider/PowerCenterProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/f;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
