.class public final synthetic Ld7/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ld7/l$e;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ld7/l$e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/p;->a:Ld7/l$e;

    iput-object p2, p0, Ld7/p;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ld7/p;->a:Ld7/l$e;

    iget-object v1, p0, Ld7/p;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Ld7/l$e;->a(Ld7/l$e;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
