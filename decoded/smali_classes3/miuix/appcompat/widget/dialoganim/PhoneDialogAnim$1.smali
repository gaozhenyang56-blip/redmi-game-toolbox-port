.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;
.super Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field final synthetic val$dimBgOriginalBottomMargin:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iput p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-super/range {p0 .. p9}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    invoke-static {p2, p3}, Lmiuix/appcompat/app/l;->a(Landroid/view/WindowInsets;I)Z

    move-result p3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p4

    invoke-static {p2, p4}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p5

    invoke-static {p2, p5}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget p5, p4, Landroid/graphics/Insets;->bottom:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p5, p2

    invoke-static {p3, p5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->isInMultiScreenMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->isInMultiScreenBottom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    if-eqz p4, :cond_2

    iget p2, p4, Landroid/graphics/Insets;->bottom:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->updateDimBgMargin(I)V

    :cond_3
    return-void
.end method
