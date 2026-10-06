.class public final synthetic Lr3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/z;

.field public final synthetic b:Lr3/z$a;


# direct methods
.method public synthetic constructor <init>(Lr3/z;Lr3/z$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/x;->a:Lr3/z;

    iput-object p2, p0, Lr3/x;->b:Lr3/z$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lr3/x;->a:Lr3/z;

    iget-object v1, p0, Lr3/x;->b:Lr3/z$a;

    invoke-static {v0, v1, p1}, Lr3/z;->l(Lr3/z;Lr3/z$a;Landroid/view/View;)V

    return-void
.end method
