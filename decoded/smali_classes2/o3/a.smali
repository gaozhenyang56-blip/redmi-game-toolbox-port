.class public final synthetic Lo3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo3/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lo3/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/a;->a:Lo3/c;

    iput-object p2, p0, Lo3/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo3/a;->a:Lo3/c;

    iget-object v1, p0, Lo3/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo3/c;->a(Lo3/c;Ljava/lang/String;)V

    return-void
.end method
