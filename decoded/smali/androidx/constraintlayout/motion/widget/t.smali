.class public final synthetic Landroidx/constraintlayout/motion/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/motion/widget/u;

.field public final synthetic b:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/motion/widget/u;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/u;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/t;->b:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/u;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/t;->b:[Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/u;->a(Landroidx/constraintlayout/motion/widget/u;[Landroid/view/View;)V

    return-void
.end method
