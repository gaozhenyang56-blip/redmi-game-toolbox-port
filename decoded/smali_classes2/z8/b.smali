.class public final synthetic Lz8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lz8/c;

.field public final synthetic b:Lb9/a;

.field public final synthetic c:Lb9/c;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lz8/c;Lb9/a;Lb9/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/b;->a:Lz8/c;

    iput-object p2, p0, Lz8/b;->b:Lb9/a;

    iput-object p3, p0, Lz8/b;->c:Lb9/c;

    iput p4, p0, Lz8/b;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lz8/b;->a:Lz8/c;

    iget-object v1, p0, Lz8/b;->b:Lb9/a;

    iget-object v2, p0, Lz8/b;->c:Lb9/c;

    iget v3, p0, Lz8/b;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lz8/c;->g(Lz8/c;Lb9/a;Lb9/c;ILandroid/view/View;)V

    return-void
.end method
