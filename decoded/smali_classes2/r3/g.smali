.class public final synthetic Lr3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/f$b;

.field public final synthetic b:Lr3/f$a;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lr3/f$b;Lr3/f$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/g;->a:Lr3/f$b;

    iput-object p2, p0, Lr3/g;->b:Lr3/f$a;

    iput-object p3, p0, Lr3/g;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lr3/g;->a:Lr3/f$b;

    iget-object v1, p0, Lr3/g;->b:Lr3/f$a;

    iget-object v2, p0, Lr3/g;->c:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lr3/f$b;->a(Lr3/f$b;Lr3/f$a;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
