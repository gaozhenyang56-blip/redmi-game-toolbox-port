.class public final synthetic Ls8/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls8/u;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ls8/u$d;

.field public final synthetic d:I

.field public final synthetic e:Ls8/h;


# direct methods
.method public synthetic constructor <init>(Ls8/u;Ljava/lang/String;Ls8/u$d;ILs8/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/m;->a:Ls8/u;

    iput-object p2, p0, Ls8/m;->b:Ljava/lang/String;

    iput-object p3, p0, Ls8/m;->c:Ls8/u$d;

    iput p4, p0, Ls8/m;->d:I

    iput-object p5, p0, Ls8/m;->e:Ls8/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ls8/m;->a:Ls8/u;

    iget-object v1, p0, Ls8/m;->b:Ljava/lang/String;

    iget-object v2, p0, Ls8/m;->c:Ls8/u$d;

    iget v3, p0, Ls8/m;->d:I

    iget-object v4, p0, Ls8/m;->e:Ls8/h;

    invoke-static {v0, v1, v2, v3, v4}, Ls8/u;->i(Ls8/u;Ljava/lang/String;Ls8/u$d;ILs8/h;)V

    return-void
.end method
