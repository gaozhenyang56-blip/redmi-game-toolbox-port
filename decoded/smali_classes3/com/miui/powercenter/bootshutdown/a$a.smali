.class Lcom/miui/powercenter/bootshutdown/a$a;
.super Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/bootshutdown/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/bootshutdown/a;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/a$a;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a$a;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/a;->b(Lcom/miui/powercenter/bootshutdown/a;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a$a;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/a;->a(Lcom/miui/powercenter/bootshutdown/a;)Lcom/miui/powercenter/bootshutdown/a$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a$a;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/a;->a(Lcom/miui/powercenter/bootshutdown/a;)Lcom/miui/powercenter/bootshutdown/a$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/powercenter/bootshutdown/a$e;->onShow()V

    :cond_0
    return-void
.end method
