.class Lcom/miui/gamebooster/beauty/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/miui/gamebooster/beauty/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/beauty/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/beauty/a;-><init>(Lcom/miui/gamebooster/beauty/a$a;)V

    sput-object v0, Lcom/miui/gamebooster/beauty/a$d;->a:Lcom/miui/gamebooster/beauty/a;

    return-void
.end method
