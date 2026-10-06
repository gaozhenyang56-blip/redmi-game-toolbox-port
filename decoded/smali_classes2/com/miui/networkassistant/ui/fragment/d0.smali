.class public final synthetic Lcom/miui/networkassistant/ui/fragment/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/d0;->a:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/d0;->b:I

    iput-boolean p3, p0, Lcom/miui/networkassistant/ui/fragment/d0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/d0;->a:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/d0;->b:I

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/d0;->c:Z

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->b0(Lcom/miui/networkassistant/ui/fragment/SettingFragment;IZ)V

    return-void
.end method
