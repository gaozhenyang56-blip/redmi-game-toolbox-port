.class public abstract Lmiuix/springback/trigger/a$d;
.super Lmiuix/springback/trigger/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/a$d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lmiuix/springback/trigger/a;->a()I

    move-result v0

    invoke-static {}, Lmiuix/springback/trigger/a;->b()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiuix/springback/trigger/a$a;-><init>(II)V

    return-void
.end method
