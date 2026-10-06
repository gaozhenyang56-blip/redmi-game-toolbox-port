.class Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->lambda$getView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private getViewInner(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p4}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    goto :goto_0

    :cond_2
    sub-int/2addr p2, v2

    if-ne p3, p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    goto :goto_0

    :goto_1
    invoke-virtual {p4, v0, p2, v1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p4
.end method

.method private static synthetic lambda$getView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    invoke-direct {p0, p3, v0, p1, p2}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->getViewInner(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$drawable;->miuix_popup_window_list_item_fg:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lmiuix/popupwidget/widget/c;

    invoke-direct {p2}, Lmiuix/popupwidget/widget/c;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-object p1
.end method
