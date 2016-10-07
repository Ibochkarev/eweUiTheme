<?php

class eweUiThemeOfficeItemEnableProcessor extends modObjectProcessor
{
    public $objectType = 'eweUiThemeItem';
    public $classKey = 'eweUiThemeItem';
    public $languageTopics = array('eweuitheme');
    //public $permission = 'save';


    /**
     * @return array|string
     */
    public function process()
    {
        if (!$this->checkPermissions()) {
            return $this->failure($this->modx->lexicon('access_denied'));
        }

        $ids = $this->modx->fromJSON($this->getProperty('ids'));
        if (empty($ids)) {
            return $this->failure($this->modx->lexicon('eweuitheme_item_err_ns'));
        }

        foreach ($ids as $id) {
            /** @var eweUiThemeItem $object */
            if (!$object = $this->modx->getObject($this->classKey, $id)) {
                return $this->failure($this->modx->lexicon('eweuitheme_item_err_nf'));
            }

            $object->set('active', true);
            $object->save();
        }

        return $this->success();
    }

}

return 'eweUiThemeOfficeItemEnableProcessor';
