.class public final synthetic Lmiuix/popupwidget/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lmiuix/popupwidget/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lmiuix/popupwidget/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/popupwidget/widget/e;->a:Lmiuix/popupwidget/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmiuix/popupwidget/widget/e;->a:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-static {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->b(Lmiuix/popupwidget/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
