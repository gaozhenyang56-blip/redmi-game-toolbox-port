.class public final synthetic Lr3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lr3/f$b;

.field public final synthetic b:Lr3/f$a;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lr3/f$b;Lr3/f$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/h;->a:Lr3/f$b;

    iput-object p2, p0, Lr3/h;->b:Lr3/f$a;

    iput-object p3, p0, Lr3/h;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lr3/h;->a:Lr3/f$b;

    iget-object v1, p0, Lr3/h;->b:Lr3/f$a;

    iget-object v2, p0, Lr3/h;->c:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lr3/f$b;->b(Lr3/f$b;Lr3/f$a;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
