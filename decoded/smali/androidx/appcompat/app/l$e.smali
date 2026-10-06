.class public Landroidx/appcompat/app/l$e;
.super Landroidx/appcompat/app/ActionBar$d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field private a:Landroidx/appcompat/app/ActionBar$e;

.field private b:Ljava/lang/Object;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:I

.field private g:Landroid/view/View;

.field final synthetic h:Landroidx/appcompat/app/l;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar$d;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/app/l$e;->f:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/appcompat/app/ActionBar$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->a:Landroidx/appcompat/app/ActionBar$e;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->g:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/app/l$e;->f:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/l;->selectTab(Landroidx/appcompat/app/ActionBar$d;)V

    return-void
.end method

.method public setContentDescription(I)Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l$e;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/l$e;->e:Ljava/lang/CharSequence;

    iget p1, p0, Landroidx/appcompat/app/l$e;->f:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)V

    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroidx/appcompat/app/ActionBar$d;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    invoke-virtual {v0}, Landroidx/appcompat/app/l;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l$e;->setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/l$e;->g:Landroid/view/View;

    iget p1, p0, Landroidx/appcompat/app/l$e;->f:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)V

    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l$e;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/l$e;->c:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Landroidx/appcompat/app/l$e;->f:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)V

    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/l$e;->f:I

    return-void
.end method

.method public setTabListener(Landroidx/appcompat/app/ActionBar$e;)Landroidx/appcompat/app/ActionBar$d;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/l$e;->a:Landroidx/appcompat/app/ActionBar$e;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$d;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/l$e;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l$e;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/l$e;->d:Ljava/lang/CharSequence;

    iget p1, p0, Landroidx/appcompat/app/l$e;->f:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->h:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)V

    :cond_0
    return-object p0
.end method
