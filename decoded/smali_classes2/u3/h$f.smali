.class Lu3/h$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/AppUseConditionItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lu3/h;


# direct methods
.method private constructor <init>(Lu3/h;)V
    .locals 0

    iput-object p1, p0, Lu3/h$f;->b:Lu3/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu3/h;Lu3/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lu3/h$f;-><init>(Lu3/h;)V

    return-void
.end method
