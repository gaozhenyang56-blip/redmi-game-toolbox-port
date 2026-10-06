.class Lcom/gzy/redmiport/PortRuntime$3;
.super Ljava/lang/Object;
.source "PortRuntime.java"

# interfaces
.implements Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/PortRuntime;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionResult(II)V
    .registers 4

    .line 45
    const/16 v0, 0x4b1

    if-eq p1, v0, :cond_5

    return-void

    .line 46
    :cond_5
    # getter for: Lcom/gzy/redmiport/PortRuntime;->foreground:Landroid/app/Activity;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$7()Landroid/app/Activity;

    move-result-object p1

    .line 47
    if-eqz p1, :cond_1b

    .line 48
    if-nez p2, :cond_10

    const-string p2, "Shizuku \u5df2\u6388\u6743"

    goto :goto_12

    :cond_10
    const-string p2, "\u672a\u6388\u6743 Shizuku\uff0cFPS \u6682\u4e0d\u53ef\u7528"

    .line 49
    :goto_12
    nop

    .line 47
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 50
    :cond_1b
    return-void
.end method
