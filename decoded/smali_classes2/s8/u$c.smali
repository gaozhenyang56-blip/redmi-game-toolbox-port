.class Ls8/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls8/u;->U(Ljava/lang/String;Ls8/u$d;ILs8/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls8/u$d;

.field final synthetic b:Ls8/u;


# direct methods
.method constructor <init>(Ls8/u;Ls8/u$d;)V
    .locals 0

    iput-object p1, p0, Ls8/u$c;->b:Ls8/u;

    iput-object p2, p0, Ls8/u$c;->a:Ls8/u$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ls8/u$c;->a:Ls8/u$d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls8/u$d;->a()V

    :cond_0
    return-void
.end method
