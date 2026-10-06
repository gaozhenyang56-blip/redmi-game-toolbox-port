.class public final synthetic Lef/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lef/m$a;


# direct methods
.method public synthetic constructor <init>(Lef/m$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/e;->a:Lef/m$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lef/e;->a:Lef/m$a;

    invoke-static {v0}, Lef/m;->i(Lef/m$a;)V

    return-void
.end method
