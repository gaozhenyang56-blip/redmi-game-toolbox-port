.class public final synthetic Ld8/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/g$a;


# instance fields
.field public final synthetic a:Ld8/l$a;

.field public final synthetic b:Ld8/l;


# direct methods
.method public synthetic constructor <init>(Ld8/l$a;Ld8/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/i;->a:Ld8/l$a;

    iput-object p2, p0, Ld8/i;->b:Ld8/l;

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 2

    iget-object v0, p0, Ld8/i;->a:Ld8/l$a;

    iget-object v1, p0, Ld8/i;->b:Ld8/l;

    invoke-static {v0, v1, p1}, Ld8/l$a;->a(Ld8/l$a;Ld8/l;Z)V

    return-void
.end method
