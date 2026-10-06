.class public final synthetic Ll3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ll3/b;

.field public final synthetic b:Ll3/b$a;


# direct methods
.method public synthetic constructor <init>(Ll3/b;Ll3/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/a;->a:Ll3/b;

    iput-object p2, p0, Ll3/a;->b:Ll3/b$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ll3/a;->a:Ll3/b;

    iget-object v1, p0, Ll3/a;->b:Ll3/b$a;

    invoke-static {v0, v1, p1}, Ll3/b;->k(Ll3/b;Ll3/b$a;Landroid/view/View;)V

    return-void
.end method
