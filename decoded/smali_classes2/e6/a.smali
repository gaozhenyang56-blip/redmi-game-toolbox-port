.class public abstract Le6/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lb6/a;

.field protected b:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Le6/a;)Lb6/a;
    .locals 0

    iget-object p0, p0, Le6/a;->a:Lb6/a;

    return-object p0
.end method


# virtual methods
.method protected b()V
    .locals 2

    const v0, 0x7f0b05e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Le6/a$a;

    invoke-direct {v1, p0}, Le6/a$a;-><init>(Le6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0cf3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Le6/a;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, La8/k0;->o(Landroid/view/View;Z)V

    invoke-virtual {p0}, Le6/a;->b()V

    return-void
.end method

.method public setBackClick(Lb6/a;)V
    .locals 0

    iput-object p1, p0, Le6/a;->a:Lb6/a;

    return-void
.end method
