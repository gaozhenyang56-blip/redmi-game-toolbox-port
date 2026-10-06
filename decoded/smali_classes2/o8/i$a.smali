.class Lo8/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lo8/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo8/i;

    invoke-direct {v0}, Lo8/i;-><init>()V

    sput-object v0, Lo8/i$a;->a:Lo8/i;

    return-void
.end method
