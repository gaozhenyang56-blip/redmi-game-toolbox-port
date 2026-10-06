.class public final synthetic Lij/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lij/d;

.field public final synthetic b:Ldj/a;


# direct methods
.method public synthetic constructor <init>(Lij/d;Ldj/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/a;->a:Lij/d;

    iput-object p2, p0, Lij/a;->b:Ldj/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lij/a;->a:Lij/d;

    iget-object v1, p0, Lij/a;->b:Ldj/a;

    invoke-static {v0, v1}, Lij/d;->a(Lij/d;Ldj/a;)V

    return-void
.end method
