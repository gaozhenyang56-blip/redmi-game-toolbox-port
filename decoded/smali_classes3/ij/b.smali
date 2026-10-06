.class public final synthetic Lij/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lij/d$a;


# direct methods
.method public synthetic constructor <init>(Lij/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/b;->a:Lij/d$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lij/b;->a:Lij/d$a;

    invoke-static {v0}, Lij/d$a;->a(Lij/d$a;)V

    return-void
.end method
