.class public final Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$b;->a:Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/powercenter/powerui/a;->c:Lcom/miui/powercenter/powerui/a$a;

    invoke-virtual {p1}, Lcom/miui/powercenter/powerui/a$a;->a()Lcom/miui/powercenter/powerui/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/powerui/a;->c(Landroid/content/Intent;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "status = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ChargingHotWarning_Activity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$b;->a:Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->m0(I)V

    :cond_0
    return-void
.end method
