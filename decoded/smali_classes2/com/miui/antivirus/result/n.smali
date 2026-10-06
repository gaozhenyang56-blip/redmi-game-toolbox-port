.class public Lcom/miui/antivirus/result/n;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/miui/antivirus/result/a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lw4/e;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/n;->e:Ljava/util/HashMap;

    const v1, 0x7f0e0517

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e051d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0520

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0269

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0485

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0515

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0516

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0518

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0519

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0487

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0488

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e051a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e051b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e051c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e051e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e051f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0274

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0275

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0525

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0527

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0521

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0523

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04cd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0490

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e048d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e048e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0491

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e048f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e04c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e026a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e026b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e026c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e026d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e026e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e026f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0271

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0524

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0e0483

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lw4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;",
            "Lw4/e;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antivirus/result/n;->a:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antivirus/result/n;->b:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/antivirus/result/n;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/antivirus/result/n;->c:Lw4/e;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lq2/c;

    iget-object v1, p0, Lcom/miui/antivirus/result/n;->a:Landroid/content/res/Resources;

    const v2, 0x7f080494

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lq2/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lq2/c;

    iget-object v1, p0, Lcom/miui/antivirus/result/n;->a:Landroid/content/res/Resources;

    const v2, 0x7f080fb4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lq2/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/a;

    sget-object v0, Lcom/miui/antivirus/result/m;->a:[I

    invoke-virtual {p1}, Lcom/miui/antivirus/result/a;->getBaseCardType()Lcom/miui/antivirus/result/a$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/miui/antivirus/result/n;->e:Ljava/util/HashMap;

    check-cast p1, Lcom/miui/antivirus/result/c;

    invoke-virtual {p1}, Lcom/miui/antivirus/result/c;->getLayoutId()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    sget-object v0, Lcom/miui/antivirus/result/n;->e:Ljava/util/HashMap;

    check-cast p1, Lcom/miui/antivirus/model/d;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->getLayoutId()I

    move-result p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v6, p0

    invoke-interface/range {p0 .. p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/a;

    sget-object v1, Lcom/miui/antivirus/result/m;->a:[I

    invoke-virtual {v0}, Lcom/miui/antivirus/result/a;->getBaseCardType()Lcom/miui/antivirus/result/a$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v1, v11, :cond_13

    if-eq v1, v10, :cond_0

    move-object/from16 v2, p2

    goto/16 :goto_17

    :cond_0
    check-cast v0, Lcom/miui/antivirus/result/c;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->getLayoutId()I

    move-result v1

    const v13, 0x7f0e0485

    const v14, 0x7f0e0483

    if-nez p2, :cond_5

    iget-object v15, v6, Lcom/miui/antivirus/result/n;->d:Landroid/content/Context;

    invoke-static {v15, v1, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v15, 0x7f0b0575

    const v2, 0x7f0b01d8

    const v3, 0x7f0b0506

    const v4, 0x7f0b0bc9

    if-eq v1, v14, :cond_4

    const v5, 0x7f0b025b

    const v7, 0x7f0b0b21

    if-eq v1, v13, :cond_3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const v13, 0x7f0b053a

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    const v13, 0x7f0b054c

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    goto/16 :goto_a

    :pswitch_0
    new-instance v2, Lcom/miui/antivirus/result/a0;

    invoke-direct {v2}, Lcom/miui/antivirus/result/a0;-><init>()V

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/a0;->a:Landroid/widget/TextView;

    const v3, 0x7f0b0c25

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/a0;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_4

    :pswitch_1
    new-instance v2, Lcom/miui/antivirus/result/b0;

    invoke-direct {v2}, Lcom/miui/antivirus/result/b0;-><init>()V

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/b0;->a:Landroid/widget/TextView;

    const v3, 0x7f0b02b0

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/b0;->b:Landroid/widget/TextView;

    const v3, 0x7f0b0140

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/result/b0;->c:Landroid/view/View;

    const v3, 0x7f0b021d

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/b0;->d:Landroid/widget/TextView;

    goto/16 :goto_6

    :pswitch_2
    new-instance v2, Lcom/miui/antivirus/result/z;

    invoke-direct {v2}, Lcom/miui/antivirus/result/z;-><init>()V

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/z;->a:Landroid/widget/TextView;

    goto/16 :goto_6

    :pswitch_3
    new-instance v2, Lcom/miui/antivirus/result/v;

    invoke-direct {v2}, Lcom/miui/antivirus/result/v;-><init>()V

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/v;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/v;->c:Landroid/widget/TextView;

    const v3, 0x7f0b074f

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/v;->d:Landroid/widget/TextView;

    const v3, 0x7f0b0d9e

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/v;->e:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_4
    new-instance v2, Lcom/miui/antivirus/result/s;

    invoke-direct {v2}, Lcom/miui/antivirus/result/s;-><init>()V

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/s;->a:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/s;->b:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {v9, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    new-instance v3, Lcom/miui/antivirus/result/q;

    invoke-direct {v3}, Lcom/miui/antivirus/result/q;-><init>()V

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/miui/antivirus/result/q;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v3, Lcom/miui/antivirus/result/q;->c:Landroid/widget/Button;

    iget-object v2, v3, Lcom/miui/antivirus/result/q;->d:[Landroid/widget/ImageView;

    const v4, 0x7f0b0507

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v2, v12

    iget-object v2, v3, Lcom/miui/antivirus/result/q;->d:[Landroid/widget/ImageView;

    const v4, 0x7f0b050b

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v2, v11

    iget-object v2, v3, Lcom/miui/antivirus/result/q;->d:[Landroid/widget/ImageView;

    const v4, 0x7f0b050d

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v2, v10

    iget-object v2, v3, Lcom/miui/antivirus/result/q;->d:[Landroid/widget/ImageView;

    const v4, 0x7f0b050f

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v2, v8

    iget-object v2, v3, Lcom/miui/antivirus/result/q;->c:Landroid/widget/Button;

    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v9, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    :pswitch_6
    new-instance v2, Lcom/miui/antivirus/result/p;

    invoke-direct {v2}, Lcom/miui/antivirus/result/p;-><init>()V

    const v3, 0x7f0b051d

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->a:Landroid/view/View;

    const v4, 0x7f0b0b11

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->d:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/miui/antivirus/result/p;->a:Landroid/view/View;

    const v5, 0x7f0b0b10

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->g:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/miui/antivirus/result/p;->a:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b051e

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->e:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/miui/antivirus/result/p;->b:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->h:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/miui/antivirus/result/p;->b:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b051f

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->f:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/miui/antivirus/result/p;->c:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/p;->i:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/miui/antivirus/result/p;->c:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :pswitch_7
    new-instance v2, Lcom/miui/antivirus/result/r;

    invoke-direct {v2}, Lcom/miui/antivirus/result/r;-><init>()V

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/r;->c:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/r;->a:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/r;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/result/r;->e:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :pswitch_8
    new-instance v3, Lcom/miui/antivirus/result/r;

    invoke-direct {v3}, Lcom/miui/antivirus/result/r;-><init>()V

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/miui/antivirus/result/r;->c:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/miui/antivirus/result/r;->a:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/miui/antivirus/result/r;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v3, Lcom/miui/antivirus/result/r;->d:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/miui/antivirus/result/r;->e:Landroid/view/View;

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :pswitch_9
    new-instance v5, Lcom/miui/antivirus/result/t;

    invoke-direct {v5}, Lcom/miui/antivirus/result/t;-><init>()V

    goto :goto_3

    :pswitch_a
    new-instance v5, Lcom/miui/antivirus/result/t;

    invoke-direct {v5}, Lcom/miui/antivirus/result/t;-><init>()V

    :goto_3
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v5, Lcom/miui/antivirus/result/t;->d:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/antivirus/result/t;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/antivirus/result/t;->c:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v5, Lcom/miui/antivirus/result/t;->f:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    :pswitch_b
    invoke-static {v9, v0}, Lcom/miui/antivirus/result/i;->d(Landroid/view/View;Lcom/miui/antivirus/result/c;)Lw9/c;

    move-result-object v2

    :goto_4
    invoke-virtual {v9, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move v2, v12

    goto/16 :goto_b

    :pswitch_c
    new-instance v2, Lcom/miui/antivirus/result/u;

    invoke-direct {v2}, Lcom/miui/antivirus/result/u;-><init>()V

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/u;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/u;->c:Landroid/widget/TextView;

    const v3, 0x7f0b0341

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/u;->d:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/u;->e:Landroid/widget/ImageView;

    const v3, 0x7f0b053b

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/u;->f:Landroid/widget/ImageView;

    const v3, 0x7f0b053c

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/u;->g:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/result/u;->h:Landroid/view/View;

    goto :goto_8

    :pswitch_d
    new-instance v2, Lcom/miui/antivirus/result/x;

    invoke-direct {v2}, Lcom/miui/antivirus/result/x;-><init>()V

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_7

    :pswitch_e
    new-instance v2, Lcom/miui/antivirus/result/w;

    invoke-direct {v2}, Lcom/miui/antivirus/result/w;-><init>()V

    move-object v3, v9

    check-cast v3, Lcom/miui/securitycenter/ad/view/AdDownloadView;

    iput-object v3, v2, Lcom/miui/antivirus/result/w;->a:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    :cond_2
    :goto_5
    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    invoke-virtual {v9, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_3
    new-instance v2, Lcom/miui/antivirus/result/x;

    invoke-direct {v2}, Lcom/miui/antivirus/result/x;-><init>()V

    const v3, 0x7f0b0174

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :goto_7
    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/antivirus/result/x;->d:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/x;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/antivirus/result/x;->c:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/result/x;->e:Landroid/view/View;

    :goto_8
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    goto :goto_5

    :cond_4
    new-instance v5, Lcom/miui/antivirus/result/o;

    invoke-direct {v5}, Lcom/miui/antivirus/result/o;-><init>()V

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/securitycenter/ad/view/AdImageView;

    iput-object v3, v5, Lcom/miui/antivirus/result/o;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/antivirus/result/o;->c:Landroid/widget/TextView;

    const v3, 0x7f0b0c5e

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/antivirus/result/o;->d:Landroid/widget/TextView;

    const v3, 0x7f0b0d04

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/antivirus/result/o;->e:Landroid/widget/TextView;

    const v3, 0x7f0b0c89

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/antivirus/result/o;->f:Landroid/widget/TextView;

    const v3, 0x7f0b0cb9

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/antivirus/result/o;->g:Landroid/widget/TextView;

    const v3, 0x7f0b0cb3

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/antivirus/result/o;->h:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v5, Lcom/miui/antivirus/result/o;->i:Landroid/widget/Button;

    const v2, 0x7f0b0c4f

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lcom/miui/antivirus/result/o;->j:Landroid/widget/TextView;

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v5, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    :goto_9
    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_a
    move v2, v11

    :goto_b
    if-eqz v2, :cond_6

    invoke-static {v9}, Lx4/h0;->b(Landroid/view/View;)Z

    goto :goto_c

    :cond_5
    move-object/from16 v9, p2

    :cond_6
    :goto_c
    if-eq v1, v14, :cond_a

    const v2, 0x7f0e0485

    if-eq v1, v2, :cond_9

    const v2, 0x7f0e0524

    if-eq v1, v2, :cond_8

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    packed-switch v1, :pswitch_data_8

    packed-switch v1, :pswitch_data_9

    packed-switch v1, :pswitch_data_a

    goto/16 :goto_f

    :pswitch_f
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/q;

    iget-object v1, v1, Lcom/miui/antivirus/result/q;->c:Landroid/widget/Button;

    goto/16 :goto_e

    :pswitch_10
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/p;

    iget-object v2, v1, Lcom/miui/antivirus/result/p;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/miui/antivirus/result/p;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/miui/antivirus/result/p;->c:Landroid/view/View;

    goto :goto_e

    :pswitch_11
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/r;

    iget-object v1, v1, Lcom/miui/antivirus/result/r;->e:Landroid/view/View;

    if-eqz v1, :cond_b

    goto :goto_d

    :pswitch_12
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/r;

    iget-object v2, v1, Lcom/miui/antivirus/result/r;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/miui/antivirus/result/r;->e:Landroid/view/View;

    if-eqz v1, :cond_b

    :goto_d
    goto :goto_e

    :pswitch_13
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/t;

    iget-object v1, v1, Lcom/miui/antivirus/result/t;->f:Landroid/widget/Button;

    goto :goto_e

    :pswitch_14
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/u;

    iget-object v1, v1, Lcom/miui/antivirus/result/u;->h:Landroid/view/View;

    goto :goto_e

    :pswitch_15
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/w;

    iget-object v2, v1, Lcom/miui/antivirus/result/w;->a:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getBtnView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_7
    iget-object v1, v1, Lcom/miui/antivirus/result/w;->a:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getAdXView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_d

    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/a0;

    iget-object v1, v1, Lcom/miui/antivirus/result/a0;->b:Landroid/widget/TextView;

    goto :goto_e

    :cond_9
    :pswitch_16
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/x;

    iget-object v1, v1, Lcom/miui/antivirus/result/x;->e:Landroid/view/View;

    goto :goto_e

    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/o;

    iget-object v1, v1, Lcom/miui/antivirus/result/o;->i:Landroid/widget/Button;

    :goto_e
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_b
    :goto_f
    move v11, v12

    :pswitch_17
    const v1, 0x7f0b0b55

    invoke-virtual {v9, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0b0576

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0332

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_11

    if-nez v11, :cond_11

    iget-object v3, v6, Lcom/miui/antivirus/result/n;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->isTop()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_c

    move v12, v3

    :cond_c
    invoke-virtual {v9, v4, v3, v5, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->isBottom()Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x7f080f91

    goto :goto_11

    :cond_d
    const v3, 0x7f080f90

    goto :goto_11

    :cond_e
    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_10

    :cond_f
    move v3, v12

    :goto_10
    invoke-virtual {v9, v4, v12, v5, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->isBottom()Z

    move-result v3

    if-eqz v3, :cond_10

    const v3, 0x7f080f8c

    goto :goto_11

    :cond_10
    const v3, 0x7f080f8d

    :goto_11
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->isBottom()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v3, v6, Lcom/miui/antivirus/result/n;->d:Landroid/content/Context;

    move/from16 v1, p1

    move-object v2, v9

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/antivirus/result/c;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;Landroid/view/ViewGroup;)V

    goto/16 :goto_17

    :cond_13
    check-cast v0, Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->k()Lcom/miui/antivirus/model/d$c;

    move-result-object v1

    if-eqz p2, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_14

    goto :goto_12

    :cond_14
    move-object/from16 v2, p2

    goto :goto_13

    :cond_15
    :goto_12
    iget-object v2, v6, Lcom/miui/antivirus/result/n;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->getLayoutId()I

    move-result v3

    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_13
    sget-object v3, Lcom/miui/antivirus/result/m;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v11, :cond_20

    if-eq v1, v10, :cond_1e

    if-eq v1, v8, :cond_1d

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1c

    const/4 v3, 0x5

    if-eq v1, v3, :cond_16

    goto/16 :goto_17

    :cond_16
    move-object v1, v2

    check-cast v1, Lcom/miui/antivirus/ui/AppResultView;

    iget-object v3, v6, Lcom/miui/antivirus/result/n;->c:Lw4/e;

    invoke-virtual {v1, v3}, Lcom/miui/antivirus/ui/e;->setEventHandler(Lw4/e;)V

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/AppResultView;->h(Lcom/miui/antivirus/model/d;)V

    const v1, 0x7f0b0576

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b0332

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v6, Lcom/miui/antivirus/result/n;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/miui/antivirus/model/a;->isTop()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    invoke-virtual {v0}, Lcom/miui/antivirus/model/a;->isBottom()Z

    move-result v8

    if-eqz v8, :cond_17

    move v12, v4

    :cond_17
    invoke-virtual {v2, v5, v4, v7, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/a;->isBottom()Z

    move-result v4

    if-eqz v4, :cond_18

    const v4, 0x7f080f91

    goto :goto_15

    :cond_18
    const v4, 0x7f080f90

    goto :goto_15

    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    invoke-virtual {v0}, Lcom/miui/antivirus/model/a;->isBottom()Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_14

    :cond_1a
    move v4, v12

    :goto_14
    invoke-virtual {v2, v5, v12, v7, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/a;->isBottom()Z

    move-result v4

    if-eqz v4, :cond_1b

    const v4, 0x7f080452

    goto :goto_15

    :cond_1b
    const v4, 0x7f080f8d

    :goto_15
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lcom/miui/antivirus/model/a;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    :cond_1c
    move-object v1, v2

    check-cast v1, Lcom/miui/antivirus/ui/WifiResultView;

    iget-object v3, v6, Lcom/miui/antivirus/result/n;->c:Lw4/e;

    invoke-virtual {v1, v3}, Lcom/miui/antivirus/ui/e;->setEventHandler(Lw4/e;)V

    check-cast v0, Lcom/miui/antivirus/model/j;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/WifiResultView;->setWifiStatusInfo(Lcom/miui/antivirus/model/j;)V

    goto :goto_17

    :cond_1d
    move-object v1, v2

    check-cast v1, Lcom/miui/antivirus/ui/ButtonResultView;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/ButtonResultView;->e(Lcom/miui/antivirus/model/d;)V

    iget-object v0, v6, Lcom/miui/antivirus/result/n;->c:Lw4/e;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/e;->setEventHandler(Lw4/e;)V

    goto :goto_17

    :cond_1e
    const v1, 0x7f0b04e1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v6, Lcom/miui/antivirus/result/n;->d:Landroid/content/Context;

    const v4, 0x7f1215d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v6, Lcom/miui/antivirus/result/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0601a2

    goto :goto_16

    :cond_1f
    iget-object v0, v6, Lcom/miui/antivirus/result/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060080

    :goto_16
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    :cond_20
    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->q()Lcom/miui/antivirus/model/d$d;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/model/d$d;->d:Lcom/miui/antivirus/model/d$d;

    if-ne v0, v1, :cond_21

    move-object v0, v2

    check-cast v0, Lcom/miui/antivirus/ui/MonitorSafeResultView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->a()V

    :cond_21
    :goto_17
    return-object v2

    :pswitch_data_0
    .packed-switch 0x7f0e0269
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0e0274
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0e0487
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f0e048d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7f0e0515
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7f0e0523
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x7f0e0269
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x7f0e0274
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x7f0e0487
        :pswitch_16
        :pswitch_14
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x7f0e048d
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x7f0e0515
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_11
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/n;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/antivirus/result/j;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b0b55

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
