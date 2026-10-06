.class public final synthetic Lw6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/f$b;


# instance fields
.field public final synthetic a:Lw6/f$a;

.field public final synthetic b:Lx6/c;


# direct methods
.method public synthetic constructor <init>(Lw6/f$a;Lx6/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw6/e;->a:Lw6/f$a;

    iput-object p2, p0, Lw6/e;->b:Lx6/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lw6/e;->a:Lw6/f$a;

    iget-object v1, p0, Lw6/e;->b:Lx6/c;

    invoke-static {v0, v1}, Lw6/f$a;->a(Lw6/f$a;Lx6/c;)V

    return-void
.end method
