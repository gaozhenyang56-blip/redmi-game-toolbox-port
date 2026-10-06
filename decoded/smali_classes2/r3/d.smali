.class public final synthetic Lr3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/f;

.field public final synthetic b:Lr3/f$b;


# direct methods
.method public synthetic constructor <init>(Lr3/f;Lr3/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/d;->a:Lr3/f;

    iput-object p2, p0, Lr3/d;->b:Lr3/f$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lr3/d;->a:Lr3/f;

    iget-object v1, p0, Lr3/d;->b:Lr3/f$b;

    invoke-static {v0, v1, p1}, Lr3/f;->l(Lr3/f;Lr3/f$b;Landroid/view/View;)V

    return-void
.end method
