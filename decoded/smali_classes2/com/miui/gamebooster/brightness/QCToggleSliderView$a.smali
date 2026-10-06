.class Lcom/miui/gamebooster/brightness/QCToggleSliderView$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/brightness/QCToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/brightness/QCToggleSliderView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$a;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$a;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->c(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b(Lcom/miui/gamebooster/brightness/QCToggleSliderView;I)I

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$a;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->a(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setValue(I)V

    return-void
.end method
