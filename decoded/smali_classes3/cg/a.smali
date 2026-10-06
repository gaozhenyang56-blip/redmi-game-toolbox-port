.class public Lcg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)V
    .locals 2

    new-instance v0, Lcg/b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcg/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcg/b;->setIntegral(I)V

    new-instance p0, Landroid/widget/Toast;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
