.class public final synthetic Lr3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/u;

.field public final synthetic b:Lr3/u$b;


# direct methods
.method public synthetic constructor <init>(Lr3/u;Lr3/u$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/t;->a:Lr3/u;

    iput-object p2, p0, Lr3/t;->b:Lr3/u$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lr3/t;->a:Lr3/u;

    iget-object v1, p0, Lr3/t;->b:Lr3/u$b;

    invoke-static {v0, v1, p1}, Lr3/u;->k(Lr3/u;Lr3/u$b;Landroid/view/View;)V

    return-void
.end method
