.class public Lh4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/b$b;->a:Landroid/view/View;

    iput-object p2, p0, Lh4/b$b;->b:Landroid/view/animation/Animation;

    iput-object p3, p0, Lh4/b$b;->c:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic a(Lh4/b$b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lh4/b$b;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lh4/b$b;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lh4/b$b;->b:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic c(Lh4/b$b;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lh4/b$b;->c:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method
