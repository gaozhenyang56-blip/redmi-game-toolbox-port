.class Lcom/miui/powercenter/powersaver/PowerSaverProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/powersaver/PowerSaverProvider;->c(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/powersaver/PowerSaverProvider;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/powersaver/PowerSaverProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/powersaver/PowerSaverProvider$a;->a:Lcom/miui/powercenter/powersaver/PowerSaverProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/powersaver/PowerSaverProvider$a;->a:Lcom/miui/powercenter/powersaver/PowerSaverProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lpg/i;->L(Landroid/content/Context;I)V

    return-void
.end method
