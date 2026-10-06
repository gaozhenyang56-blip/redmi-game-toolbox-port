.class Lj3/c$a;
.super Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj3/c;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj3/c;


# direct methods
.method constructor <init>(Lj3/c;)V
    .locals 0

    iput-object p1, p0, Lj3/c$a;->a:Lj3/c;

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lj3/c$a;->a:Lj3/c;

    invoke-static {v0}, Lj3/c;->b(Lj3/c;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lj3/c$a;->a:Lj3/c;

    invoke-static {v0}, Lj3/c;->a(Lj3/c;)Lj3/c$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj3/c$a;->a:Lj3/c;

    invoke-static {v0}, Lj3/c;->a(Lj3/c;)Lj3/c$d;

    move-result-object v0

    invoke-interface {v0}, Lj3/c$d;->onShow()V

    :cond_0
    return-void
.end method
