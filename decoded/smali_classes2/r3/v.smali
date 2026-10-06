.class public final synthetic Lr3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/u$b;

.field public final synthetic b:Lr3/u$a;


# direct methods
.method public synthetic constructor <init>(Lr3/u$b;Lr3/u$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/v;->a:Lr3/u$b;

    iput-object p2, p0, Lr3/v;->b:Lr3/u$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lr3/v;->a:Lr3/u$b;

    iget-object v1, p0, Lr3/v;->b:Lr3/u$a;

    invoke-static {v0, v1, p1}, Lr3/u$b;->a(Lr3/u$b;Lr3/u$a;Landroid/view/View;)V

    return-void
.end method
