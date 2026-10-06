.class final Lcom/miui/gamebooster/aihelper/a$c$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/a$c;->d(Lcom/miui/gamebooster/aihelper/AISettingDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/lang/Integer;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/aihelper/AISettingDTO;

.field final synthetic b:Lcom/miui/gamebooster/aihelper/a;

.field final synthetic c:Lcom/miui/gamebooster/aihelper/AISettingDTO;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/AISettingDTO;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c$b;->a:Lcom/miui/gamebooster/aihelper/AISettingDTO;

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/a$c$b;->b:Lcom/miui/gamebooster/aihelper/a;

    iput-object p3, p0, Lcom/miui/gamebooster/aihelper/a$c$b;->c:Lcom/miui/gamebooster/aihelper/AISettingDTO;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a$c$b;->a:Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setOperateValue(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a$c$b;->b:Lcom/miui/gamebooster/aihelper/a;

    invoke-static {v0}, Lcom/miui/gamebooster/aihelper/a;->k(Lcom/miui/gamebooster/aihelper/a;)Lcom/miui/gamebooster/aihelper/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a$c$b;->c:Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-virtual {v1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/miui/gamebooster/aihelper/a$d;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/aihelper/a$c$b;->a(I)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
