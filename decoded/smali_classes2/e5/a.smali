.class public final synthetic Le5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le5/i;


# direct methods
.method public synthetic constructor <init>(Le5/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/a;->a:Le5/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le5/a;->a:Le5/i;

    invoke-static {v0}, Le5/i;->e(Le5/i;)V

    return-void
.end method
