.class public final synthetic Lf5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf5/v$a;


# direct methods
.method public synthetic constructor <init>(Lf5/v$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/t;->a:Lf5/v$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf5/t;->a:Lf5/v$a;

    invoke-static {v0}, Lf5/v$a;->a(Lf5/v$a;)V

    return-void
.end method
