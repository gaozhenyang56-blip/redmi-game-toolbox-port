.class public final synthetic Lkc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkc/q;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lkc/q;ZLjava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/o;->a:Lkc/q;

    iput-boolean p2, p0, Lkc/o;->b:Z

    iput-object p3, p0, Lkc/o;->c:Ljava/lang/String;

    iput p4, p0, Lkc/o;->d:I

    iput p5, p0, Lkc/o;->e:I

    iput-boolean p6, p0, Lkc/o;->f:Z

    iput-boolean p7, p0, Lkc/o;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lkc/o;->a:Lkc/q;

    iget-boolean v1, p0, Lkc/o;->b:Z

    iget-object v2, p0, Lkc/o;->c:Ljava/lang/String;

    iget v3, p0, Lkc/o;->d:I

    iget v4, p0, Lkc/o;->e:I

    iget-boolean v5, p0, Lkc/o;->f:Z

    iget-boolean v6, p0, Lkc/o;->g:Z

    invoke-static/range {v0 .. v6}, Lkc/q;->f(Lkc/q;ZLjava/lang/String;IIZZ)V

    return-void
.end method
