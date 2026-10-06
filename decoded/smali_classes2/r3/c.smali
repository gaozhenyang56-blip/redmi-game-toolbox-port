.class public final synthetic Lr3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/b$b;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lr3/b$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/c;->a:Lr3/b$b;

    iput-object p2, p0, Lr3/c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lr3/c;->a:Lr3/b$b;

    iget-object v1, p0, Lr3/c;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lr3/b$b;->a(Lr3/b$b;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
